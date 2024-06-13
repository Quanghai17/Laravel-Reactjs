<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class TestHistory extends Model
{
  protected $guarded = [];  
  
  public function user()
    {
        return $this->belongsTo(User::class);
    }

    /**
     * Get the test associated with the test history.
     */
    public function test()
    {
        return $this->belongsTo(Test::class);
    }
}
