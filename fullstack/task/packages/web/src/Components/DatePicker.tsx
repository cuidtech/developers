import React, { useState } from 'react';
import DatePicker from 'react-datepicker';
import 'react-datepicker/dist/react-datepicker.css';
import moment from 'moment';
import { Grid } from '@mui/material';
import { makeStyles } from '@mui/styles';

const useStyles = makeStyles({
  container: {
    display: 'flex',
    justifyContent: 'flex-end',
    alignItems: 'center',
    paddingRight: '20px',
  },
  datePicker: {
    width: '250px',
    height: '30px',
    border: 'solid gray 2px',
    borderRadius: '5px'
  },
});

interface DatePickerProps {
  onSelectDate: (date: string) => void;
}

const CustomDatePicker: React.FC<DatePickerProps> = ({ onSelectDate }) => {
  const classes = useStyles();
  const [selectedDate, setSelectedDate] = useState<Date | null>(null);

  const handleDateChange = (date: Date | null) => {
    setSelectedDate(date);
    if (date) {
      const formattedDate = moment(date).format('DD.MM.YYYY');
      onSelectDate(formattedDate);
    }
  };

  const today = new Date();

  const filterPastDates = (date: Date) => {
    return moment(date).isSameOrBefore(today, 'day');
  };

  return (
    <Grid container className={classes.container}>
      <Grid item>
        Date:
        <DatePicker
          selected={selectedDate}
          onChange={handleDateChange}
          filterDate={filterPastDates}
          maxDate={today}
          placeholderText="Select a date"
          dateFormat="yyyy-MM-dd"
          className={classes.datePicker}
        />
      </Grid>
    </Grid>
  );
};

export default CustomDatePicker;
