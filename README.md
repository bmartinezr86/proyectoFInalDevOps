# La importancia de una buena cultura DevOps.

![](./)


**Detalles del proyecto de fin de curso**
Este proyecto ha sido enfocado en aprender que es la cultura DevOps, cómo de importante es. Además de cómo usando las herramientas y las prácticas necesarias podemos llevarlo acabo.


**Tecnologías usadas**
Vamos a utilizar una máquina como servidor con un Linux Mint, el cual correra los distintos contenedores en un clúster de kubernetes de minikube.

Los programas que tendrá instalada está máquina, serán:
* Docker engine.
* kubectl y minikube.

Los servicios principales que mantendrá el clúster son:
* Mysql.
* WordPress.
* Configuración del plugin de kubernetes de Jenkins.
* Prometheus.
* Grafana.

El único contenedor que habrá fuera del clúster de minikube, será Jenkins. El cual será usado como servidor de CI y seguidamente de CD.

Cómo medio de comunicación para los avisos de Jenkins y el tráfico que pasara a Prometheus y que posteriormente se verá reflejado en Grafana, se usara Slack, ya que tiene plugins que facilitan el trabajo, además de que está pillando mucha fuerza en el mercado.

**Resultados esperados**
* Queremos aprender a hacer uso de Docker y Kubernetes con una aplicación simple como lo es WordPress, además de aplicar la implementación continua (CI) a un repositorio de Github o Docker hub y el despliegue continuo (CD) con Jenkins a los servidores de producción, para desplegar los entornos de trabajo de manera mucho más rápida y segura. Logrando así obtener un producto de calidad en un menor tiempo.

El proyecto lo encontraremos [aquí](./Proyecto)



