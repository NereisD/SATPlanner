## Projet Sat4j et Pddl4j


Création d'un planner avec la bibliothèque Sat4j. Afin de la comparer les performances avec la bibliothèque pddl4j


Nous avons réalisé 3 test sur les domaines suivant : Blocks, gripper et logistics
Un script.sh permet d'executer les commandes afin dextraire le temps dexectution de chaque planner.

Avec un script jupyter lab nous comparons les temps entre les deux planners pour les 3 problemes.

![plot](./SatPlanner/data_stats/data_stats/graph/timeBlocksworld.png)

![plot](./SatPlanner/data_stats/data_stats/graph/timeGripper.png)

![plot](./SatPlanner/data_stats/data_stats/graph/timeLogistics.png)


## Projet Planner MonteCarlo

Création d'un planner de type MONTECARLO pour comparer les performances avec la bibliothèque pddl4j.

Nous avons testé les planner ASP et SIMON (montecarlo) sur mêmes 3 domaines.

### Tests sur Blocks
<p>
  <img src="./SatPlanner/data_stats/data_stats/graph/time_ASP_SIM_Blocksworld.png" width="49%" />
  <img src="./SatPlanner/data_stats/data_stats/graph/action_ASP_SIM_Blocksworld.png" width="49%" />
</p>
<!-- SatPlanner/data_stats/data_stats/ chemin d'accès dossier-->

<p>
Pour ce domaine les temps d'execution de SIMON a partir des problèmes 9 etaient trop grand (9: 50.54s, 10: 150.41s, 11: 18.41s, 12: 8.64s) par rapport au premiers problemes (< 1s) ce qui empechait la visualisation des résultats. Nous avons donc choisi de ne pas le représenter sur les graphiques.
</p>

### Tests sur Logistics
<p>
  <img src="./SatPlanner/data_stats/data_stats/graph/time_ASP_SIM_Logistics.png" width="49%" />
  <img src="./SatPlanner/data_stats/data_stats/graph/action_ASP_SIM_Logistics.png" width="49%" />
</p>

<p>
Même problème pour ce domaine avec le temps d'execution de SIMON pour le dernier probleme (9: 39,65s) etait beaucoup trop grand par rapport aux autres (< 0.25s). 
</p>


### Tests sur Gripper
<p>
  <img src="./SatPlanner/data_stats/data_stats/graph/time_ASP_SIM_Gripper.png" width="49%" />
  <img src="./SatPlanner/data_stats/data_stats/graph/action_ASP_SIM_Gripper.png" width="49%" />
</p>
<p>
Les résultats sur Gripper sont anormaux ASP
NORMAL QUE ASP soit a 30sec sur le 2 ???? possible de refaire ???
</p>


<p>En regardant ces graphiques on remarque que, dans l'ensemble, ASP est meilleure que SIMON aussi bien sur le temps total que sur le nombre d'action total.
</p>

<p>
Ces résultats sont normales etant donné la nature de chacun des ces planners. En effet, ASP effectue une recherche rapide et trouvera sistématiquement la solution optimale tandis que l'algorithme de Montecarlo fait effectue une recherche aléatoire et son temps d'execution depend fortement de ce paramètre aléatoire et cela se repercute aussi sur la taille du plan solution.
</p>

<p>
Ses performances peuvent donc être très variables et peuvent se rapprocher de ASP (voir les égaler avec un peu de chance) ou alors atteindre des valeures abérrantes. Comme pour le domaine Logistics par exemple, avec les problèmes 9, 10, 11 et 12 sur lesquels SIMON a un temps d'execution plus de 100 fois supérieur à ASP.
</p>

<p>
Au final on voit que l'algorithme de monte carlo n'est pas un algorithme de recherche performant cependant il a d'autres avantages notamment sa consomation de ressource. En effet, c'est un algorithme très peu couteux tant en mémoire que en calculs et cela en fait un très bon algorithme pour rechercher rapidement l'existence ou non d'un plan solution par exemple.
</p>
