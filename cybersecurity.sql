
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `questions` (
  `q_id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `is_enabled` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `questions` (`q_id`, `question`, `is_enabled`) VALUES
(1, 'What is cybersecurity?', 1),
(2, 'Question?', 1);

/**/

CREATE TABLE `quiz_answer` (
  `qa_id` int(11) NOT NULL,
  `q_id` int(11) NOT NULL,
  `option_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `quiz_answer` (`qa_id`, `q_id`, `option_number`) VALUES
(1, 1, 2),
(2, 2, 1);

/**/

CREATE TABLE `quiz_options` (
  `option_id` int(11) NOT NULL,
  `q_id` int(11) NOT NULL,
  `option` varchar(255) NOT NULL,
  `is_enabled` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `quiz_options` (`option_id`, `q_id`, `option`, `is_enabled`) VALUES
(1, 1, 'Answer.', 1),
(2, 1, 'Answer.', 1),
(3, 1, 'Answer.', 1),
(4, 1, 'Answer', 1),
(5, 2, 'Answer.', 1),
(6, 2, 'Answer.', 1),
(7, 2, 'Answer.', 1),
(8, 2, 'Answer.', 1);


ALTER TABLE `questions`
  ADD PRIMARY KEY (`q_id`);


ALTER TABLE `quiz_answer`
  ADD PRIMARY KEY (`qa_id`);


ALTER TABLE `quiz_options`
  ADD PRIMARY KEY (`option_id`);


ALTER TABLE `questions`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `quiz_answer`
  MODIFY `qa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `quiz_options`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;
