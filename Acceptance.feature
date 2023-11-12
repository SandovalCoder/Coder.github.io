
Feature: Crear nueva tarea o actividad

Scenario 1: Crear nueva tarea de usuario estudiante
Given que el usuario ha sido registrado como estudiante y el usuario se encuentra en el menú principal
When el usuario haga clic en el botón "Crear nueva tarea"
Then la aplicación mostrará un submenú al usuario con opciones personalizadas para un estudiante donde podrá ingresar el nombre, descripción y fecha límite de la tarea.

Scenario 2: Crear nueva actividad de usuario trabajador
Given que el usuario ha sido registrado como trabajador y el usuario se encuentra en el menú principal
When el usuario haga clic en el botón "Crear nueva actividad"
Then la aplicación mostrará un submenú al usuario con opciones personalizadas para un trabajador donde podrá ingresar el nombre, descripción y fecha límite de su actividad.

Scenario 3: Se ingresan los datos para crear la actividad
Given que el usuario está en el submenú para registrar su actividad
When el usuario ingrese la información de la fecha, nombre y descripción
And el usuario confirme la creación de la actividad
Then la aplicación agendará su nueva actividad y el sistema activará las notificaciones.

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Feature: Enviar recordatorios

Scenario 1: Enviar recordatorios a dispositivo móvil
Given que el usuario le ha dado permiso a la aplicación para enviar notificaciones a su celular
When el usuario tenga una tarea/actividad próxima a vencer
Then el usuario recibe una notificación con el mensaje y detalle de la tarea/actividad.

Scenario 2: El usuario lee la notificación
Given que al usuario ya le llegó una notificación a su celular
When el usuario la lea
Then el usuario sabrá que tiene que entregar su tarea porque se va a vencer

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Feature: Asignar prioridad de tarea o actividad

Scenario 1: Dar prioridad a tarea/actividad
Given que el usuario tiene varias tareas y desea priorizar algunas tareas
When el usuario seleccione una tarea y elija la opción de asignar prioridad
Then el usuario puede marcar la tarea como “Alta”,”Media” o “Baja”

Scenario 2: Cambiar prioridad de tarea o actividad
Given que el usuario tiene varias tareas con prioridad asignada y desea cambiarla
When el usuario seleccione una tarea con una prioridad asignada y elija la opción de cambiar prioridad
Then el usuario puede cambiar la prioridad de dicha tarea.

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Feature: Mostrar calendario

Scenario 1: Ver el calendario
Given que el usuario ha registrado varias tareas y actividades y desea verlas ordenadas según su fecha límite
When el usuario seleccione una tarea y acceda a la sección de calendario
Then se mostrará un calendario mensual con todas las tareas y actividades asignadas ordenadas según sus fechas límite

Scenario 2: Ver el calendario semanal
Given que el usuario está en la sección calendario y desea ver las tareas de una sola semana
When el usuario seleccione el ícono de “Semana”
Then se mostrará un calendario de la semana con las tareas y actividades registradas, el día y la hora en que vencerán.

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Feature: Sugerencias de tareas

Scenario 1: Sugerencia de la aplicación a usuarios nuevos
Given que el usuario es nuevo y no tiene historial en la aplicación
When el usuario seleccione la sección de “Sugerencias”
Then se mostrará un mensaje de texto diciendo que se deben haber completado tareas anteriormente para utilizar esta opción

Scenario 2: Sugerencia de la aplicación a usuarios recurrentes
Given que el usuario utiliza la aplicación a menudo y desea tener sugerencias de tareas
When el usuario seleccione la sección de “Sugerencias”
Then se mostrarán aquellas tareas/actividades que la aplicación sugiera hacer con la fecha en la que se deben hacer para optimizar el tiempo

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Feature: Retroalimentación del usuario

Scenario 1: Reportar un error común en la aplicación
Given que el usuario ha encontrado una falla en el sistema de la aplicación y desea reportarla
When el usuario elija el ícono de Retroalimentación y luego la opción de errores
Then se mostrarán varias opciones de posibles errores y cómo solucionarlos

Scenario 2: Reportar error poco común en la aplicación
Given que el usuario ha encontrado una falla poco común en el sistema de la aplicación y desea reportarla
When el usuario elija la opción de errores y la opción de “Otros”
Then se mostrará un cuadro de texto donde podrá escribir y enviar su error

Scenario 3: Enviar comentarios y calificaciones
Given que el usuario ha usado la aplicación y desea compartir su experiencia
When el usuario elija el ícono de Retroalimentación y vaya a la parte de “Comentarios”
Then se mostrará una sección con anteriores comentarios y calificaciones de distintos usuarios donde podrá enviar su opinión sobre la aplicación, junto con su calificación

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Feature: Gestión del estado de una tarea

Scenario 1: Asignar estado de una tarea
Given que el usuario ha completado una tarea o actividad
When el usuario selecciona la tarea y elija la opción de estado
Then el usuario podrá cambiar el estado de la tarea a “Completado”

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Feature: Interacción por voz

Scenario 1: Utilizar la interacción de voz
Given que el usuario desea interactuar con la aplicación sin usar las manos
When el usuario mantenga presionado el botón de voz y pida algo
Then la aplicación procesa los comandos de voz del usuario y realiza las acciones correspondientes de acuerdo con la solicitud.

Scenario 2: Recordatorios por voz
Given que el usuario desea recibir recordatorios con modulador de voz y ha configurado correctamente sus recordatorios
When el usuario reciba una notificación sobre un recordatorio de tarea/actividad
Then se generará una voz que diga el recordatorio.

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Feature: Gestión de suscripción del usuario

Scenario 1: Generar suscripción
Given que el usuario tiene una suscripción en la aplicación
When el usuario acceda a la sección de suscripciones y seleccione la opción “Suscribirse”
Then puede llenar sus datos, método de pago y seleccionar la suscripción que desee

Scenario 2: Configurar suscripción
Given que el usuario desea administrar su suscripción a la aplicación
When accede a la sección de configuración de la suscripción,
Then puede realizar cambios en su plan de suscripción, como actualizarlo, cancelarlo, etc.

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Feature: Reporte de tareas o actividades completadas semanales

Scenario 1: Mostrar informe de tareas/actividades completadas
Given que el usuario desea obtener un informe resumido de su productividad semanal
When solicita generar un informe que muestre las tareas o actividades completadas
Then se genera y muestra un informe que presenta la lista de tareas o actividades completadas con fechas y estadísticas de productividad

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Feature: Personalización de notificaciones

Scenario 1: Personalización de notificaciones
Given que el usuario desea personalizar sus notificaciones
When seleccione el botón de “notificaciones” y vaya a la sección de “ajustes”
Then el usuario podrá cambiar el tono, frecuencia de recordatorios y apariencia de notificación

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Feature: Autenticación de usuario

Scenario 1: Configurar autenticación de dos pasos
Given que el usuario desea tener mayor seguridad en su cuenta
When vaya a configuración, perfil y elija la sección de “autenticación en dos pasos”
Then se pedirá un número telefónico o celular para poder realizar la vinculación

Scenario 2: Generar código para vinculación
Given que el usuario eligió la opción de “autenticación en dos pasos”
When el usuario ingrese un correo o celular
Then se enviará un mensaje de confirmación para finalizar la vinculación

Scenario 3: Autenticación al iniciar sesión
Given que el usuario tiene activada la autenticación en dos pasos de la app
When el usuario inicie sesión desde otro dispositivo
Then se mostrará una pantalla donde deberá escribir el código que se le enviará a su correo o celular

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Feature: Proceso de inicio de sesión

Scenario 1: Iniciar sesión en la aplicación
Given el usuario ingresa a la aplicación
When el usuario inicia sesión
Then la app tardará un máximo de 5 segundos en completar el inicio de sesión


Título: OrganAlzer - Tu Asistente de Productividad
Subtítulo: Mantén tus tareas organizadas y optimiza tu tiempo

Imagina una vida sin estrés, con todas tus tareas y actividades en orden.
Con OrganAlzer, puedes lograrlo.