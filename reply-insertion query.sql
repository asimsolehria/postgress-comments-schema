with rows as (
INSERT INTO public.comments (title,comment_text) VALUES ('another reply','I am again replying to your comment') RETURNING *
)
 INSERT INTO public.replyto(
 	"commentId", title, replytext)
 	SELECT id,title,comment_text FROM rows