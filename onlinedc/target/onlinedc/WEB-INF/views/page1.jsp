<div class="row wrapper border-bottom white-bg page-heading">
	<div class="col-lg-10">
		<h2>Usuarios</h2>
		<ol class="breadcrumb">
			<li><a href="index.html">Inicio</a></li>
			<li class="active"><strong>Lista</strong></li>
		</ol>
	</div>
	<div class="col-lg-2"></div>
</div>
<div class="wrapper wrapper-content animated fadeInRight"
	ng-controller="datatablesCtrl as showCase">
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<!--<div class="ibox-title">
					<h5>T�tulo</h5>
					 Configuraci�n de ayuda <div ibox-tools></div> 
				</div>-->

				<div class="ibox-content">
					<div>
					<input type="file" name="file" class="form-control"
						onchange="angular.element(this).scope().UploadFile(this.files)"/>
					<input type="button" value="Importar" class="btn btn.success"
						ng-disabled="!SelectedFileForUpload" ng-click="ParseExcelDataAndSave()"/>
						<br/>
						<span style="color: red">
							{{Message}}
						</span>
					</div>	
					<table datatable="" dt-options="showCase.dtOptions"
						dt-columns="showCase.dtColumns" dt-instance="showCase.dtInstance"
						class="table table-hover">
					</table>
					<!-- <thead>
							<tr>
								<th>Id</th>
								<th>Nombres</th>
								<th>Descripci�n</th>
								<th>Correo</th>
								<th>Estado</th>
								<th style = "text-align:center;">Acciones</th>
							</tr>
						</thead>
						<tbody>
							<tr ng-repeat="person in persons">
								<td>{{ person.id }}</td>
								<td>{{ person.name }}</td>
								<td>{{ person.description }}</td>
								<td>--</td>
								<td>

								</td>
								<td style = "text-align:center;">

								</td>
							</tr>
						</tbody>
						-->
				</div>
				<p class="text-danger">
					<strong>{{ showCase.message }}</strong>
				</p>
			</div>
		</div>
	</div>
</div>
