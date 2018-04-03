<?php

namespace SilexTest\DAO;

use Doctrine\DBAL\Connection;
use SilexTest\Domain\Comment;

class CommentDAO
{
    /**
     * Database connection
     *
     * @var \Doctrine\DBAL\Connection
     */
    private $db;
    
    /**
     * Constructor
     *
     * @param \Doctrine\DBAL\Connection The database connection object
     */
    public function __construct(Connection $db) {
        $this->db = $db;
    }
    
    /**
     * Return a list of all comments for an article, sorted by date (most recent first).
     *
     * @param integer $articleId The article id.
     *
     * @return array A list of all comments for the article.
     */
    public function findAllByArticle($articleId) {
        // ...
    }
    
    /**
     * Creates a Comment object based on a DB row.
     *
     * @param array $row The DB row containing Comment data.
     * @return \SilexTest\Domain\Comment
     */
    private function buildComment(array $row) {
        // ...
    }
}