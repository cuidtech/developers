import { FC, useState } from 'react';
import DatePicker from 'react-datepicker'
const DatePickerComponent: FC<{ date: Date, setDate: (date: Date) => void }> = (props) => {
  // const [startDate, setStartDate] = useState<Date>(new Date());
  return (
    <DatePicker
      dateFormat="dd.MM.yyyy"
      maxDate={new Date()}
      showIcon
      selected={props.date}
      onChange={(date) => props.setDate(date!)}
    />
  );
};

export default DatePickerComponent
