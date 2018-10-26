<!DOCTYPE html>
<meta charset='utf-8'/>
<link href='/fullcalendar/fullcalendar.min.css' rel='stylesheet'/>
<link href='/fullcalendar/fullcalendar.print.min.css' rel='stylesheet' media='print'/>
<script src='/fullcalendar/lib/moment.min.js'></script>
<script src='/fullcalendar/fullcalendar.min.js'></script>
<script>
    $(document).ready(function () {

        $('#calendar').fullCalendar({
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month'
            },
            defaultDate: '2018-03-12',
            //navLinks: true, // can click day/week names to navigate views
            businessHours: true, // display business hours
            editable: true,
            eventLimit: true,
            events: [
                {
                    title: 'Business Lunch',
                    start: '2018-03-05',
                    constraint: 'businessHours',
                    planindex: 5
                },
                {
                    title: 'Business Lunch',
                    start: '2018-03-05',
                    constraint: 'businessHours',
                    planindex: 5
                },
                {
                    title: 'Business Lunch',
                    start: '2018-03-05',
                    constraint: 'businessHours',
                    planindex: 5
                },
                {
                    title: 'Business Lunch',
                    start: '2018-03-05',
                    constraint: 'businessHours',
                    planindex: 5
                },
                {
                    title: 'Business Lunch',
                    start: '2018-03-05',
                    constraint: 'businessHours',
                    planindex: 5
                },
                {
                    title: 'Meeting',
                    start: '2018-03-13T11:00:00',
                    constraint: 'availableForMeeting', // defined below
                    color: '#257e4a'
                },
                {
                    title: 'Conference',
                    start: '2018-03-18',
                    end: '2018-03-22'
                },
                {
                    title: 'Party',
                    start: '2018-03-29T20:00:00'
                },
                {
                    title: 'test',
                    start: '2018-10-29T20:00:00'
                },
                // areas where "Meeting" must be dropped
                {
                    id: 'availableForMeeting',
                    start: '2018-03-11T10:00:00',
                    end: '2018-03-11T16:00:00',
                    rendering: 'background'
                },
                {
                    id: 'availableForMeeting',
                    start: '2018-03-13T10:00:00',
                    end: '2018-03-13T16:00:00',
                    rendering: 'background'
                },

                // red areas where no events can be dropped
                {
                    start: '2018-03-24',
                    end: '2018-03-28',
                    overlap: false,
                    rendering: 'background',
                    color: '#ff9f89'
                },
                {
                    start: '2018-03-06',
                    end: '2018-03-08',
                    overlap: false,
                    rendering: 'background',
                    color: '#ff9f89'
                }
            ]
        });

    });

</script>
<style>

    body {
        margin: 40px 10px;
        padding: 0;
        font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
        font-size: 14px;
    }

    #calendar {
        max-width: 900px;
        margin: 0 auto;
    }

</style>

<!-- <button>+</button> -->
<p>
    hello im calendar.
</p>
<div id='calendar'></div>
