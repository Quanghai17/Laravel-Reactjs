@php
    $students = \App\Models\User::get();
    $countStu = $students->count();

    $tests = \App\Models\Test::get();
    $countTes = $tests->count();

    $posts = \App\Models\Post::get();
    $countPots = $posts->count();

    $class = \App\Models\Classroom::get();
    $countClass = $class->count();

    $test_histories = \App\Models\TestHistory::with('user')->with('test')->get();
    // dd($test_histories);
@endphp

@extends('voyager::master')

@section('content')
    <div class="page-content">
        @include('voyager::alerts')
        <div class="clearfix container-fluid row">
            <div class="col-xs-12 col-sm-4 col-md-3">
                <div class="panel widget center bgimage"
                    style="background-color: #1a6ae1;">
                  
                    <div class="panel-content">
                        <i class="voyager-group"></i>
                        <h4>
                            {{$countStu}} Học sinh
                        </h4>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-3">
                <div class="panel widget center bgimage"
                    style="background-color: #1a6ae1;">
                   
                    <div class="panel-content">
                        <i class="voyager-file-text"></i>
                        <h4>
                           {{$countTes}} Bài kiểm tra
                        </h4>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-3">
                <div class="panel widget center bgimage"
                    style="background-color: #1a6ae1;">
                    
                    <div class="panel-content">
                        <i class="voyager-news"></i>
                        <h4>
                           {{$countPots}} Tài liệu
                        </h4>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-3">
                <div class="panel widget center bgimage"
                    style="background-color: #1a6ae1;">
                    
                    <div class="panel-content">
                        <i class="voyager-laptop"></i>
                        <h4>
                          {{$countClass}}  Lớp học
                        </h4>
                    </div>
                </div>
            </div>
        </div>
        <div class="analytics-container">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-bordered">
                        <div class="panel-body">
                            <div class="table-responsive">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <table class="table table-hover dataTable no-footer">
                                            <thead>
                                                <tr>
                                                    <th>STT</th>
                                                    <th>Tên học sinh</th>
                                                    <th>Bài kiểm tra</th>
                                                    <th>Số câu sai</th>
                                                    <th>Thời gian làm bài</th>
                                                    <th>Điểm</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($test_histories as $key => $item)
                                                <tr class="odd">
                                                    <td>{{$key + 1}}</td>
                                                    <td>{{$item->user->name}}</td>
                                                    <td>{{$item->test->title}}</td>
                                                    <td>{{$item->wrong}}</td>
                                                    <td>{{$item->time}}s</td>
                                                    <td>{{$item->point}}</td>
                                                </tr>   
                                                @endforeach
                                                
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@stop

@section('javascript')

@stop
