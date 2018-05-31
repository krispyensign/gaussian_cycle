program myprog
  use class_Stack
  use utility
  use gauss
  use Rref
  implicit none

  integer, allocatable :: edge_matrix(:,:)
  integer :: num_columns, num_rows
  integer :: i, j
  print *, "Hello main"
  num_columns = 6
  num_rows = 5
  allocate(edge_matrix(num_rows, num_columns))
  do i = 1, num_rows
    do j = 1, num_columns
      edge_matrix(i, j) = random_int(0, 1)
    enddo
  enddo

  do j=1, num_rows
    write(*,"(10(I2,a))") (edge_matrix(j, i),',',i = 1, num_columns)
  enddo

  call xorelimination(edge_matrix)

  print *, "============================================"

  do j=1, num_rows
    write(*,"(10(I2,a))") (edge_matrix(j, i),',',i = 1, num_columns)
  enddo

end program myprog
