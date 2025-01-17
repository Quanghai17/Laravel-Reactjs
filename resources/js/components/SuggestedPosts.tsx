import React from "react";
import { Link } from "react-router-dom";

interface Post {
    id: number;
    title: string;
    slug: string;
    image: string;
    created_at: string;
}

interface SuggestedPostsProps {
    className?: string;
    header: string;
    posts?: Post[];
}

const SuggestedPosts: React.FC<SuggestedPostsProps> = ({ className = "", header, posts = [] }) => {
    return (
        <div className={`w-full shadow-[rgba(7,_65,_210,_0.1)_0px_9px_30px] rounded-lg p-4 ${className}`}>
            <h2 className="font-roboto font-medium text-dark-hard md:text-xl">
                {header}
            </h2>
            <div className="grid gap-y-5 mt-5 md:grid-cols-2 md:gap-x-5 lg:grid-cols-1">
                {posts.map((item) => (
                    <div key={item.id} className="flex space-x-3 flex-nowrap items-center">
                        <img
                            className="aspect-square object-cover rounded-lg w-1/5"
                            src={`http://hoc_ta.test/storage/${item.image}`}
                            alt={item.title}
                        />
                        <div className="text-sm font-roboto text-dark-hard font-medium">
                            <h3 className="text-sm font-roboto text-dark-hard font-medium md:text-base lg:text-lg">
                                <Link to={`/posts/${item.id}`}>{item.title}</Link>
                            </h3>
                            <span className="text-xs opacity-60">
                                {new Date(item.created_at).toLocaleDateString("en-US", {
                                    day: "numeric",
                                    month: "short",
                                    year: "numeric",
                                })}
                            </span>
                        </div>
                    </div>
                ))}
            </div>
            <h2 className="font-roboto font-medium text-dark-hard mt-8 md:text-xl">
                Tags
            </h2>
            <p className="text-slate-500 text-xs mt-2">
                There are no tags for this post
            </p>
            {/* {tags.length === 0 ? (
                <p className="text-slate-500 text-xs mt-2">
                    There are no tags for this post
                </p>
            ) : (
                <div className="flex flex-wrap gap-x-2 gap-y-2 mt-4">
                    {tags.map((item, index) => (
                        <Link
                            key={index}
                            to="/"
                            className="inline-block rounded-md px-3 py-1.5 bg-primary font-roboto text-xs text-white md:text-sm"
                        >
                            {item}
                        </Link>
                    ))}
                </div>
            )} */}
        </div>
    );
};

export default SuggestedPosts;
