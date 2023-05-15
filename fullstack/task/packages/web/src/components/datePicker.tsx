import { FC, forwardRef, Ref } from 'react';
import DatePicker from 'react-datepicker';

type ButtonProps = {
  value?: string;
  onClick?: () => void;
};
const DatePickerButton = forwardRef(
  ({ value, onClick }: ButtonProps, ref: Ref<HTMLButtonElement>) => (
    <button className="bg-blue-600 rounded text-white px-2 py-1 w-full" onClick={onClick} ref={ref}>
      {value}
    </button>
  )
);
const DatePickerComponent: FC<{ date: Date; setDate: (date: Date) => void }> = (props) => {
  return (
    <DatePicker
      dateFormat="dd.MM.yyyy"
      maxDate={new Date()}
      showIcon
      selected={props.date}
      onChange={(date) => props.setDate(date!)}
      customInput={<DatePickerButton />}
    />
  );
};

export default DatePickerComponent;
