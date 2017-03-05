// $(function() {
//
//   $('.new_remind').on('submit', function(e) {
//     e.preventDefault();
//
//     $.ajax({
//       type: 'POST',
//       url:  './users',
//       date: { date }
//     })
//     .done(function(data) {
//       console.log("ふはははは");
//     })
//     .fail(function(data){
//       console.log("oh");
//       alert('エラーが発生しました');
//     });
//   });
// });


// $(function() {
//
//   $('.new_remind').on('click', function(e) {
//     e.preventDefault();
//     console.log("ここまでdone");
//     $.ajax({
//       type: 'POST',
//       url:  './reminds',
//       dataType: 'json',
//       date: { remind: {
//         remind_date
//       }}
//     })
//     .done(function(data) {
//       console.log(date);
//       console.log("ふはははは");
//       InsertHTML(data);
//     })
//     .fail(function(data){
//       console.log("oh");
//       alert('エラーが発生しました');
//     });
//   });
// });
