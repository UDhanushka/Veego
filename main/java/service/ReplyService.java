package service;

import model.Reply;
import controller.ReplyDBUtil;

import java.util.List;

public class ReplyService {
    public static boolean addReply(int commentId, String content) {
        return ReplyDBUtil.insertReply(new Reply(commentId, content));
    }

    public static List<Reply> getReplies(int commentId) {
        return ReplyDBUtil.getRepliesByCommentId(commentId);
    }

    public static boolean updateReply(int id, String content) {
        return ReplyDBUtil.updateReply(id, content);
    }

    public static boolean deleteReply(int id) {
        return ReplyDBUtil.deleteReply(id);
    }
}
