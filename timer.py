import time
import torch


while True:
  localtime = time.localtime()
  result = time.strftime("%I:%M:%S %p", localtime)

  print(result)
  print( "                        ɮʟǟƈӄաɛɖʊӼ                                   "  )
  print('---  ---  ---  ---  ---  ---  ---  ---  ---  ---  ---  ---  ---  --- ---')
  print('__CEK CUDA :', torch.cuda.is_available())
  print('__CUDNN VERSION:', torch.backends.cudnn.version())
  print('__Number CUDA Devices:', torch.cuda.device_count())
  print('__CUDA Device Name:',torch.cuda.get_device_name(0))
  print('__CUDA Device Total Memory [GB]:',torch.cuda.get_device_properties(0).total_memory/1e9)
  print('---  ---  ---  ---  ---  ---  ---  ---  ---  ---  ---  ---  ---  --- ---')

  time.sleep(5)