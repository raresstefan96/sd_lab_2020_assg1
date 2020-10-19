class MedicalRecordsController < ActionController::Base
  # before_action :authenticate_user!
  def index
    @medical_records = MedicalRecord.all
  end

  def show
    @medical_record = MedicalRecord.find(params[:id])
  end

  def edit
    @medical_record = MedicalRecord.find(params[:id])
    @medicines = Medicine.all
  end

  def update
    @medical_record = MedicalRecord.find(params[:id])
    @medical_record_item = MedicalRecordItem.new(prescription: params[:prescription], medicine_id: params[:medicine_id])
    @medical_record.medical_record_items << @medical_record_item
    @medical_record.save
    redirect_to @medical_record
  end

  private

  def medical_record_params
    params.require(:medical_record).permit(medical_record_items: [:medicine_id, :prescription])
  end
end
