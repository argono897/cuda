# import the time module
import time
import torch

torch.cuda.is_available()

torch.cuda.current_device()

torch.cuda.device(0)

torch.cuda.device_count()

torch.cuda.get_device_name(0)

torch.cuda.get_device_properties(0)


# define the countdown func.
def countdown(t):
	
	while t:
		mins, secs = divmod(t, 60)
		timer = '{:02d}:{:02d}'.format(mins, secs)
		print(timer, end="\r")
		time.sleep(1)
		t -= 1
	
	print('BYE BYE BYE!!')

   

# input time in seconds
t = 98765

# function call
countdown(int(t))
