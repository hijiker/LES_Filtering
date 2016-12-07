!-----------------------------------------------------------------------------------!
!
!   PROGRAM : LES_Filtering_setup.f90
!
!   PURPOSE : Setup for LES-filter the DNS data for turbulent channel flow.
!
!                                                             2016.12.07 K.Noh
!
!-----------------------------------------------------------------------------------!

        SUBROUTINE SETUP

            USE LES_FILTERING_module,                                           &
                ONLY : Nx, Ny, Nz, dx, dy, dz, file_name, dir_name, path_name

            USE LES_FILTERING_module,                                           &
                ONLY : X, Y, Z, U, V, W

            IMPLICIT NONE
            INTEGER :: i,j,k

            !-----------------------------------------------------------!
            !                     Make Result folder
            !-----------------------------------------------------------!
            file_name = 'instantaneous_velocity_field_re644.plt'
            dir_name  = 'RESULT'
            CALL SYSTEM('mkdir '//TRIM(path_name))
            CALL SYSTEM('rm -rf ./'//TRIM(path_name)//'/*')

            !-----------------------------------------------------------!
            !               Constants for LES filtering
            !-----------------------------------------------------------!
            Nx = 288
            Ny = 257
            Nz = 288

            !-----------------------------------------------------------!
            !                   Allocate variables
            !-----------------------------------------------------------!
            ALLOCATE( X(1:Nx), Y(1:Ny), Z(1:Nz) )
            ALLOCATE( U(1:Nx,1:Ny,1:Nz), V(1:Nx,1:Ny,1:Nz), W(1:Nx,1:Ny,1:Nz) )

            !-----------------------------------------------------------!
            !                      Initial Conditions
            !-----------------------------------------------------------!
            X(1:Nx) = 0.0
            Y(1:Ny) = 0.0
            Z(1:Nz) = 0.0

            U(1:Nx,1:Ny,1:Nz) = 0.0
            V(1:Nx,1:Ny,1:Nz) = 0.0
            W(1:Nx,1:Ny,1:Nz) = 0.0
            
        END SUBROUTINE SETUP