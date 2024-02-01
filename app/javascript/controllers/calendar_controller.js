import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
  connect() {
      var calendarEl = document.getElementById('calendar');
      var calendar = new FullCalendar.Calendar(calendarEl,{
        plugins: [ FullCalendar.globalPlugins[7], FullCalendar.globalPlugins[8], FullCalendar.globalPlugins[8] ],
        initialView: 'dayGridMonth',
        headerToolbar: {
          left: 'prev,next today',
          center: 'title',
          right: 'dayGridMonth,timeGridWeek,listWeek'
        } });
      console.log("test",FullCalendar);
      calendar.render();

  }
}
