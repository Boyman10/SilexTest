insert into t_article values
(1, 'First article', 'Hi there! This is the very first article.');
insert into t_article values
(2, 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut hendrerit mauris ac porttitor accumsan. Nunc vitae pulvinar odio, auctor interdum dolor. Aenean sodales dui quis metus iaculis, hendrerit vulputate lorem vestibulum. Suspendisse pulvinar, purus at euismod semper, nulla orci pulvinar massa, ac placerat nisi urna eu tellus. Fusce dapibus rutrum diam et dictum. Sed tellus ipsum, ullamcorper at consectetur vitae, gravida vel sem. Vestibulum pellentesque tortor et elit posuere vulputate. Sed et volutpat nunc. Praesent nec accumsan nisi, in hendrerit nibh. In ipsum mi, fermentum et eleifend eget, eleifend vitae libero. Phasellus in magna tempor diam consequat posuere eu eget urna. Fusce varius nulla dolor, vel semper dui accumsan vitae. Sed eget risus neque.');
insert into t_article values
(3, 'Lorem ipsum in french', "J�en dis autant de ceux qui, par mollesse d�esprit, c�est-�-dire par la crainte de la peine et de la douleur, manquent aux devoirs de la vie. Et il est tr�s facile de rendre raison de ce que j�avance. Car, lorsque nous sommes tout � fait libres, et que rien ne nous emp�che de faire ce qui peut nous donner le plus de plaisir, nous pouvons nous livrer enti�rement � la volupt� et chasser toute sorte de douleur ; mais, dans les temps destin�s aux devoirs de la soci�t� ou � la n�cessit� des affaires, souvent il faut faire divorce avec la volupt�, et ne se point refuser � la peine. La r�gle que suit en cela un homme sage, c�est de renoncer � de l�g�res volupt�s pour en avoir de plus grandes, et de savoir supporter des douleurs l�g�res pour en �viter de plus f�cheuses.");

/* raw password is 'john' */
insert into t_user values
(1, 'JohnDoe', '$2y$13$F9v8pl5u5WMrCorP9MLyJeyIsOLj.0/xqKd/hqa5440kyeB7FQ8te', 'YcM=A$nsYzkyeDVjEUa7W9K', 'ROLE_USER');
/* raw password is 'jane' */
insert into t_user values
(2, 'JaneDoe', '$2y$13$qOvvtnceX.TjmiFn4c4vFe.hYlIVXHSPHfInEG21D99QZ6/LM70xa', 'dhMTBkzwDKxnD;4KNs,4ENy', 'ROLE_USER');

insert into t_comment values
(1, 'Great! Keep up the good work.', 1, 1);
insert into t_comment values
(2, "Thank you, I'll try my best.", 1, 2);
