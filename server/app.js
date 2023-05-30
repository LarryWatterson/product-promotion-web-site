const createError = require('http-errors');
const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');

const dotenv = require('dotenv');
dotenv.config();
// database
const db = require("./extern/dbConnection")

const usersRouter = require('./routes/users');
const productsRouter = require('./routes/products')
const loginRouter = require('./routes/login')
const accountRouter = require('./routes/account')

const app = express();

//jwt
app.set('api_secret_key', process.env.API_KEY);

//cors
const cors = require('cors')
app.use(cors()) // accept all requests

const imagesFolderPath = path.join(__dirname, '../uploads/products');
app.use('/productimages', express.static(imagesFolderPath));

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/api/users', usersRouter);
app.use('/api/products', productsRouter)
app.use('/api/login', loginRouter)
app.use('/api/account', accountRouter)

// catch 404 and forward to error handler
app.use((req, res, next) => {
  next(createError(404));
});

// error handler
app.use((err, req, res, next) => {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
