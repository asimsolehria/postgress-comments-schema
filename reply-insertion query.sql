 	with rows as (
INSERT INTO public.replyto(
	 "commentId", title, replytext)
	VALUES (1, 'reply', 'I am replying to your comment') RETURNING "responseId","commentId"
 )
UPDATE public.comments
SET "responseId" =  rows."responseId" FROM rows
WHERE id=rows."commentId" 