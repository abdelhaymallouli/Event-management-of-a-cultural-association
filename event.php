<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Events </title>
  <link rel="stylesheet" href="css/event.css?v=<?php echo time(); ?>">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
</head>

<body>

  <!-- Header -->
  <?php include 'header.php'; ?>

  <div class="container">
    <div class="main-content">
      <div class="card">
        <img class="event-img" src="https://wistatefair.com/fair/wp-content/uploads/2013/11/vendor-stages-600x400-1.png"
          alt="Conference image showing people at an event with purple lighting">

        <h2>Event Information</h2>
        <p>Influential media, entertainment & technology show inspirational speakers including game-changing, not just a
          large-scale conference, but a large educational hub on digital technology for business, where people
          communicate, and are inspired to find ready-made solutions or business. Taking place over two days this year
          will be the 10th Conference ideas with a theme of DangerBeauties. It features sessions.</p>

        <h2>Event About</h2>
        <p>Are you a founder that is building a new better future for women?</p>
        <p>Are you working with another co-founder or considering finding one?</p>
        <p>Learn how to build a co-founder relationship more effectively at this virtual event!</p>
        <p>Topics include:</p>
        <ul>
          <li>Creating a co-founder agreement</li>
          <li>Importance of defined roles</li>
          <li>Creating a co-founder agreement</li>
          <li>Importance of defined roles</li>
        </ul>

        <p>Are you a founder that is building a new better future for women?</p>
        <p>Are you working with another co-founder or considering finding one?</p>
        <p>Learn how to build a co-founder relationship more effectively at virtual events!</p>
      </div>

      <div class="card">
        <div class="tabs">
          <div class="tab active">29 Sep</div>
          <div class="tab">06 Oct</div>
          <div class="tab">13 Oct</div>
        </div>

        <div class="session-time">11:00 AM - 12:00 PM</div>
        <p>Web Component Design Maintaining</p>
      </div>
    </div>

    <div class="sidebar">
      <div class="card">
        <div class="date-info">
          <span class="date-label">Date :</span>
          <span class="date-value">September 5, 2025 - September 12, 2025</span>
        </div>

        <div class="date-info">
          <span class="date-label">Time :</span>
          <span class="date-value">10:00 am - 10:00 pm (Asia/Dhaka)</span>
        </div>

        <div class="date-info">
          <span class="date-label">Venue :</span>
          <span class="date-value">Chicago</span>
        </div>
      </div>

      <div class="card">
        <h2>Tickets</h2>

        <div class="ticket-type">
          <div class="ticket-type-header">
            <span class="ticket-type-name">DEFAULT</span>
            <span class="tickets-remaining">(9985 seats remaining)</span>
          </div>

          <div class="ticket-details">
            <span>Ticket Price:</span>
            <span>$100.00</span>
          </div>

          <div class="ticket-details">
            <span>Quantity:</span>
            <div class="quantity-selector">
              <button>-</button>
              <input type="text" value="0">
              <button>+</button>
            </div>
          </div>

          <div class="ticket-details">
            <span>Subtotal:</span>
            <span>$0.00</span>
          </div>
        </div>

        <div class="ticket-type">
          <div class="ticket-type-header">
            <span class="ticket-type-name">VIP</span>
            <span class="tickets-remaining">(9994 seats remaining)</span>
          </div>

          <div class="ticket-details">
            <span>Ticket Price:</span>
            <span>$200.00</span>
          </div>

          <div class="ticket-details">
            <span>Quantity:</span>
            <div class="quantity-selector">
              <button>-</button>
              <input type="text" value="0">
              <button>+</button>
            </div>
          </div>

          <div class="ticket-details">
            <span>Subtotal:</span>
            <span>$0.00</span>
          </div>
        </div>

        <div class="total-row">
          <span>Quantity: 0</span>
          <span>Total: $0.00</span>
        </div>

        <button class="get-tickets-btn">GET TICKETS</button>
      </div>

      <div class="card">
        <h2>Add To Calendar</h2>

        <a href="https://www.google.com/calendar/render?action=TEMPLATE&text=Event+Title&dates=20250401T120000Z/20250401T140000Z&details=Event+Details&location=Event+Location"
          target="_blank">
          <div class="calendar-option">
            <img class="calendar-icon" src="img/calendar-icon.png" alt="Google">
            <span>Google Calendar</span>
          </div>
        </a>

      </div>
    </div>
  </div>
</body>

</html>