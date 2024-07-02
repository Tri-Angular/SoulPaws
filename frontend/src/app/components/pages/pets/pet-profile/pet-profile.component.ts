import { Component, OnInit } from '@angular/core';
import { PetService } from '../../../../services/api/pet.service';
import { AdoptionRequestService } from '../../../../services/api/adoption-request.service';
import { ActivatedRoute } from '@angular/router';
import { AdoptionRequest } from '../../../../models/adoption-request.model'; // Asegúrate de importar el modelo de solicitud de adopción

@Component({
  selector: 'app-pet-profile',
  templateUrl: './pet-profile.component.html',
  styleUrls: ['./pet-profile.component.css']
})
export class PetProfileComponent implements OnInit {
  petProfile: any = {};
  adoptionRequest: AdoptionRequest = {} as AdoptionRequest; // Inicializar la solicitud de adopción

  constructor(
    private petProfileService: PetService,
    private route: ActivatedRoute
  ) {}

  ngOnInit(): void {
    const petProfileId = Number(this.route.snapshot.paramMap.get('id')); // Obtener el id del perfil de la mascota desde la URL
    this.petProfileService.getPetById(petProfileId).subscribe((data: any) => {
      this.petProfile = data; // Asignar los datos del perfil de la mascota
    });
  }

  initiateAdoption(): void {
    // Aquí puedes desarrollar la lógica para iniciar la adopción
    this.adoptionRequest.petProfileId = this.petProfile.id
    this.adoptionRequest.status = 'PENDING'; // Establecer el estado inicial de la solicitud como PENDING

    // Ejemplo de cómo enviar la solicitud de adopción al servicio
    this.petProfileService.initiateAdoption(this.petProfile.id).subscribe((response: any) => {
      // Manejar la respuesta del servidor si es necesario
      console.log('Solicitud de adopción enviada:', response);
      // Aquí podrías redirigir a una página de confirmación o mostrar un mensaje de éxito
    });
  }
}
