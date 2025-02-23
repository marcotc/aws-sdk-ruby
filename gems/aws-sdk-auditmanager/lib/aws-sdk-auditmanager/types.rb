# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AuditManager
  module Types

    # The wrapper of AWS account details, such as account ID, email address,
    # and so on.
    #
    # @note When making an API call, you may pass AWSAccount
    #   data as a hash:
    #
    #       {
    #         id: "AccountId",
    #         email_address: "EmailAddress",
    #         name: "AccountName",
    #       }
    #
    # @!attribute [rw] id
    #   The identifier for the specified AWS account.
    #   @return [String]
    #
    # @!attribute [rw] email_address
    #   The email address associated with the specified AWS account.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the specified AWS account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/AWSAccount AWS API Documentation
    #
    class AWSAccount < Struct.new(
      :id,
      :email_address,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An AWS service such as Amazon S3, AWS CloudTrail, and so on.
    #
    # @note When making an API call, you may pass AWSService
    #   data as a hash:
    #
    #       {
    #         service_name: "AWSServiceName",
    #       }
    #
    # @!attribute [rw] service_name
    #   The name of the AWS service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/AWSService AWS API Documentation
    #
    class AWSService < Struct.new(
      :service_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your account is not registered with AWS Audit Manager. Check the
    # delegated administrator setup on the AWS Audit Manager settings page,
    # and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An entity that defines the scope of audit evidence collected by AWS
    # Audit Manager. An AWS Audit Manager assessment is an implementation of
    # an AWS Audit Manager framework.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the assessment.
    #   @return [String]
    #
    # @!attribute [rw] aws_account
    #   The AWS account associated with the assessment.
    #   @return [Types::AWSAccount]
    #
    # @!attribute [rw] metadata
    #   The metadata for the specified assessment.
    #   @return [Types::AssessmentMetadata]
    #
    # @!attribute [rw] framework
    #   The framework from which the assessment was created.
    #   @return [Types::AssessmentFramework]
    #
    # @!attribute [rw] tags
    #   The tags associated with the assessment.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/Assessment AWS API Documentation
    #
    class Assessment < Struct.new(
      :arn,
      :aws_account,
      :metadata,
      :framework,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The control entity that represents a standard or custom control used
    # in an AWS Audit Manager assessment.
    #
    # @!attribute [rw] id
    #   The identifier for the specified control.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the specified control.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the specified control.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the specified control.
    #   @return [String]
    #
    # @!attribute [rw] response
    #   The response of the specified control.
    #   @return [String]
    #
    # @!attribute [rw] comments
    #   The list of comments attached to the specified control.
    #   @return [Array<Types::ControlComment>]
    #
    # @!attribute [rw] evidence_sources
    #   The list of data sources for the specified evidence.
    #   @return [Array<String>]
    #
    # @!attribute [rw] evidence_count
    #   The amount of evidence generated for the control.
    #   @return [Integer]
    #
    # @!attribute [rw] assessment_report_evidence_count
    #   The amount of evidence in the assessment report.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/AssessmentControl AWS API Documentation
    #
    class AssessmentControl < Struct.new(
      :id,
      :name,
      :description,
      :status,
      :response,
      :comments,
      :evidence_sources,
      :evidence_count,
      :assessment_report_evidence_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents a set of controls in an AWS Audit Manager assessment.
    #
    # @!attribute [rw] id
    #   The identifier of the control set in the assessment. This is the
    #   control set name in a plain string format.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description for the control set.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Specifies the current status of the control set.
    #   @return [String]
    #
    # @!attribute [rw] roles
    #   The roles associated with the control set.
    #   @return [Array<Types::Role>]
    #
    # @!attribute [rw] controls
    #   The list of controls contained with the control set.
    #   @return [Array<Types::AssessmentControl>]
    #
    # @!attribute [rw] delegations
    #   The delegations associated with the control set.
    #   @return [Array<Types::Delegation>]
    #
    # @!attribute [rw] system_evidence_count
    #   The total number of evidence objects retrieved automatically for the
    #   control set.
    #   @return [Integer]
    #
    # @!attribute [rw] manual_evidence_count
    #   The total number of evidence objects uploaded manually to the
    #   control set.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/AssessmentControlSet AWS API Documentation
    #
    class AssessmentControlSet < Struct.new(
      :id,
      :description,
      :status,
      :roles,
      :controls,
      :delegations,
      :system_evidence_count,
      :manual_evidence_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The folder in which AWS Audit Manager stores evidence for an
    # assessment.
    #
    # @!attribute [rw] name
    #   The name of the specified evidence folder.
    #   @return [String]
    #
    # @!attribute [rw] date
    #   The date when the first evidence was added to the evidence folder.
    #   @return [Time]
    #
    # @!attribute [rw] assessment_id
    #   The identifier for the specified assessment.
    #   @return [String]
    #
    # @!attribute [rw] control_set_id
    #   The identifier for the control set.
    #   @return [String]
    #
    # @!attribute [rw] control_id
    #   The unique identifier for the specified control.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier for the folder in which evidence is stored.
    #   @return [String]
    #
    # @!attribute [rw] data_source
    #   The AWS service from which the evidence was collected.
    #   @return [String]
    #
    # @!attribute [rw] author
    #   The name of the user who created the evidence folder.
    #   @return [String]
    #
    # @!attribute [rw] total_evidence
    #   The total amount of evidence in the evidence folder.
    #   @return [Integer]
    #
    # @!attribute [rw] assessment_report_selection_count
    #   The total count of evidence included in the assessment report.
    #   @return [Integer]
    #
    # @!attribute [rw] control_name
    #   The name of the control.
    #   @return [String]
    #
    # @!attribute [rw] evidence_resources_included_count
    #   The amount of evidence included in the evidence folder.
    #   @return [Integer]
    #
    # @!attribute [rw] evidence_by_type_configuration_data_count
    #   The number of evidence that falls under the configuration data
    #   category. This evidence is collected from configuration snapshots of
    #   other AWS services such as Amazon EC2, Amazon S3, or IAM.
    #   @return [Integer]
    #
    # @!attribute [rw] evidence_by_type_manual_count
    #   The number of evidence that falls under the manual category. This
    #   evidence is imported manually.
    #   @return [Integer]
    #
    # @!attribute [rw] evidence_by_type_compliance_check_count
    #   The number of evidence that falls under the compliance check
    #   category. This evidence is collected from AWS Config or AWS Security
    #   Hub.
    #   @return [Integer]
    #
    # @!attribute [rw] evidence_by_type_compliance_check_issues_count
    #   The total number of issues that were reported directly from AWS
    #   Security Hub, AWS Config, or both.
    #   @return [Integer]
    #
    # @!attribute [rw] evidence_by_type_user_activity_count
    #   The number of evidence that falls under the user activity category.
    #   This evidence is collected from AWS CloudTrail logs.
    #   @return [Integer]
    #
    # @!attribute [rw] evidence_aws_service_source_count
    #   The total number of AWS resources assessed to generate the evidence.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/AssessmentEvidenceFolder AWS API Documentation
    #
    class AssessmentEvidenceFolder < Struct.new(
      :name,
      :date,
      :assessment_id,
      :control_set_id,
      :control_id,
      :id,
      :data_source,
      :author,
      :total_evidence,
      :assessment_report_selection_count,
      :control_name,
      :evidence_resources_included_count,
      :evidence_by_type_configuration_data_count,
      :evidence_by_type_manual_count,
      :evidence_by_type_compliance_check_count,
      :evidence_by_type_compliance_check_issues_count,
      :evidence_by_type_user_activity_count,
      :evidence_aws_service_source_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The file used to structure and automate AWS Audit Manager assessments
    # for a given compliance standard.
    #
    # @!attribute [rw] id
    #   The unique identifier for the framework.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the specified framework.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata of a framework, such as the name, ID, description, and
    #   so on.
    #   @return [Types::FrameworkMetadata]
    #
    # @!attribute [rw] control_sets
    #   The control sets associated with the framework.
    #   @return [Array<Types::AssessmentControlSet>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/AssessmentFramework AWS API Documentation
    #
    class AssessmentFramework < Struct.new(
      :id,
      :arn,
      :metadata,
      :control_sets)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata associated with a standard or custom framework.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the framework.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identified for the specified framework.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The framework type, such as standard or custom.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the specified framework.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the specified framework.
    #   @return [String]
    #
    # @!attribute [rw] logo
    #   The logo associated with the framework.
    #   @return [String]
    #
    # @!attribute [rw] compliance_type
    #   The compliance type that the new custom framework supports, such as
    #   CIS or HIPAA.
    #   @return [String]
    #
    # @!attribute [rw] controls_count
    #   The number of controls associated with the specified framework.
    #   @return [Integer]
    #
    # @!attribute [rw] control_sets_count
    #   The number of control sets associated with the specified framework.
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   Specifies when the framework was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   Specifies when the framework was most recently updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/AssessmentFrameworkMetadata AWS API Documentation
    #
    class AssessmentFrameworkMetadata < Struct.new(
      :arn,
      :id,
      :type,
      :name,
      :description,
      :logo,
      :compliance_type,
      :controls_count,
      :control_sets_count,
      :created_at,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata associated with the specified assessment.
    #
    # @!attribute [rw] name
    #   The name of the assessment.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier for the assessment.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the assessment.
    #   @return [String]
    #
    # @!attribute [rw] compliance_type
    #   The name of a compliance standard related to the assessment, such as
    #   PCI-DSS.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The overall status of the assessment.
    #   @return [String]
    #
    # @!attribute [rw] assessment_reports_destination
    #   The destination in which evidence reports are stored for the
    #   specified assessment.
    #   @return [Types::AssessmentReportsDestination]
    #
    # @!attribute [rw] scope
    #   The wrapper of AWS accounts and services in scope for the
    #   assessment.
    #   @return [Types::Scope]
    #
    # @!attribute [rw] roles
    #   The roles associated with the assessment.
    #   @return [Array<Types::Role>]
    #
    # @!attribute [rw] delegations
    #   The delegations associated with the assessment.
    #   @return [Array<Types::Delegation>]
    #
    # @!attribute [rw] creation_time
    #   Specifies when the assessment was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated
    #   The time of the most recent update.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/AssessmentMetadata AWS API Documentation
    #
    class AssessmentMetadata < Struct.new(
      :name,
      :id,
      :description,
      :compliance_type,
      :status,
      :assessment_reports_destination,
      :scope,
      :roles,
      :delegations,
      :creation_time,
      :last_updated)
      SENSITIVE = []
      include Aws::Structure
    end

    # A metadata object associated with an assessment in AWS Audit Manager.
    #
    # @!attribute [rw] name
    #   The name of the assessment.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier for the assessment.
    #   @return [String]
    #
    # @!attribute [rw] compliance_type
    #   The name of the compliance standard related to the assessment, such
    #   as PCI-DSS.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the assessment.
    #   @return [String]
    #
    # @!attribute [rw] roles
    #   The roles associated with the assessment.
    #   @return [Array<Types::Role>]
    #
    # @!attribute [rw] delegations
    #   The delegations associated with the assessment.
    #   @return [Array<Types::Delegation>]
    #
    # @!attribute [rw] creation_time
    #   Specifies when the assessment was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated
    #   The time of the most recent update.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/AssessmentMetadataItem AWS API Documentation
    #
    class AssessmentMetadataItem < Struct.new(
      :name,
      :id,
      :compliance_type,
      :status,
      :roles,
      :delegations,
      :creation_time,
      :last_updated)
      SENSITIVE = []
      include Aws::Structure
    end

    # A finalized document generated from an AWS Audit Manager assessment.
    # These reports summarize the relevant evidence collected for your
    # audit, and link to the relevant evidence folders which are named and
    # organized according to the controls specified in your assessment.
    #
    # @!attribute [rw] id
    #   The unique identifier for the specified assessment report.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name given to the assessment report.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the specified assessment report.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The identifier for the specified AWS account.
    #   @return [String]
    #
    # @!attribute [rw] assessment_id
    #   The identifier for the specified assessment.
    #   @return [String]
    #
    # @!attribute [rw] assessment_name
    #   The name of the associated assessment.
    #   @return [String]
    #
    # @!attribute [rw] author
    #   The name of the user who created the assessment report.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the specified assessment report.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Specifies when the assessment report was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/AssessmentReport AWS API Documentation
    #
    class AssessmentReport < Struct.new(
      :id,
      :name,
      :description,
      :aws_account_id,
      :assessment_id,
      :assessment_name,
      :author,
      :status,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error entity for the `AssessmentReportEvidence` API. This is used
    # to provide more meaningful errors than a simple string message.
    #
    # @!attribute [rw] evidence_id
    #   The identifier for the evidence.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code returned by the `AssessmentReportEvidence` API.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message returned by the `AssessmentReportEvidence` API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/AssessmentReportEvidenceError AWS API Documentation
    #
    class AssessmentReportEvidenceError < Struct.new(
      :evidence_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata objects associated with the specified assessment report.
    #
    # @!attribute [rw] id
    #   The unique identifier for the assessment report.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the assessment report.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the specified assessment report.
    #   @return [String]
    #
    # @!attribute [rw] assessment_id
    #   The unique identifier for the associated assessment.
    #   @return [String]
    #
    # @!attribute [rw] assessment_name
    #   The name of the associated assessment.
    #   @return [String]
    #
    # @!attribute [rw] author
    #   The name of the user who created the assessment report.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the assessment report.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Specifies when the assessment report was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/AssessmentReportMetadata AWS API Documentation
    #
    class AssessmentReportMetadata < Struct.new(
      :id,
      :name,
      :description,
      :assessment_id,
      :assessment_name,
      :author,
      :status,
      :creation_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The location in which AWS Audit Manager saves assessment reports for
    # the given assessment.
    #
    # @note When making an API call, you may pass AssessmentReportsDestination
    #   data as a hash:
    #
    #       {
    #         destination_type: "S3", # accepts S3
    #         destination: "S3Url",
    #       }
    #
    # @!attribute [rw] destination_type
    #   The destination type, such as Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The destination of the assessment report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/AssessmentReportsDestination AWS API Documentation
    #
    class AssessmentReportsDestination < Struct.new(
      :destination_type,
      :destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateAssessmentReportEvidenceFolderRequest
    #   data as a hash:
    #
    #       {
    #         assessment_id: "UUID", # required
    #         evidence_folder_id: "UUID", # required
    #       }
    #
    # @!attribute [rw] assessment_id
    #   The identifier for the specified assessment.
    #   @return [String]
    #
    # @!attribute [rw] evidence_folder_id
    #   The identifier for the folder in which evidence is stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/AssociateAssessmentReportEvidenceFolderRequest AWS API Documentation
    #
    class AssociateAssessmentReportEvidenceFolderRequest < Struct.new(
      :assessment_id,
      :evidence_folder_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/AssociateAssessmentReportEvidenceFolderResponse AWS API Documentation
    #
    class AssociateAssessmentReportEvidenceFolderResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass BatchAssociateAssessmentReportEvidenceRequest
    #   data as a hash:
    #
    #       {
    #         assessment_id: "UUID", # required
    #         evidence_folder_id: "UUID", # required
    #         evidence_ids: ["UUID"], # required
    #       }
    #
    # @!attribute [rw] assessment_id
    #   The unique identifier for the specified assessment.
    #   @return [String]
    #
    # @!attribute [rw] evidence_folder_id
    #   The identifier for the folder in which the evidence is stored.
    #   @return [String]
    #
    # @!attribute [rw] evidence_ids
    #   The list of evidence identifiers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/BatchAssociateAssessmentReportEvidenceRequest AWS API Documentation
    #
    class BatchAssociateAssessmentReportEvidenceRequest < Struct.new(
      :assessment_id,
      :evidence_folder_id,
      :evidence_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] evidence_ids
    #   The identifier for the evidence.
    #   @return [Array<String>]
    #
    # @!attribute [rw] errors
    #   A list of errors returned by the
    #   `BatchAssociateAssessmentReportEvidence` API.
    #   @return [Array<Types::AssessmentReportEvidenceError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/BatchAssociateAssessmentReportEvidenceResponse AWS API Documentation
    #
    class BatchAssociateAssessmentReportEvidenceResponse < Struct.new(
      :evidence_ids,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error entity for the `BatchCreateDelegationByAssessment` API. This
    # is used to provide more meaningful errors than a simple string
    # message.
    #
    # @!attribute [rw] create_delegation_request
    #   The API request to batch create delegations in AWS Audit Manager.
    #   @return [Types::CreateDelegationRequest]
    #
    # @!attribute [rw] error_code
    #   The error code returned by the `BatchCreateDelegationByAssessment`
    #   API.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message returned by the
    #   `BatchCreateDelegationByAssessment` API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/BatchCreateDelegationByAssessmentError AWS API Documentation
    #
    class BatchCreateDelegationByAssessmentError < Struct.new(
      :create_delegation_request,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchCreateDelegationByAssessmentRequest
    #   data as a hash:
    #
    #       {
    #         create_delegation_requests: [ # required
    #           {
    #             comment: "DelegationComment",
    #             control_set_id: "ControlSetId",
    #             role_arn: "IamArn",
    #             role_type: "PROCESS_OWNER", # accepts PROCESS_OWNER, RESOURCE_OWNER
    #           },
    #         ],
    #         assessment_id: "UUID", # required
    #       }
    #
    # @!attribute [rw] create_delegation_requests
    #   The API request to batch create delegations in AWS Audit Manager.
    #   @return [Array<Types::CreateDelegationRequest>]
    #
    # @!attribute [rw] assessment_id
    #   The identifier for the specified assessment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/BatchCreateDelegationByAssessmentRequest AWS API Documentation
    #
    class BatchCreateDelegationByAssessmentRequest < Struct.new(
      :create_delegation_requests,
      :assessment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delegations
    #   The delegations associated with the assessment.
    #   @return [Array<Types::Delegation>]
    #
    # @!attribute [rw] errors
    #   A list of errors returned by the `BatchCreateDelegationByAssessment`
    #   API.
    #   @return [Array<Types::BatchCreateDelegationByAssessmentError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/BatchCreateDelegationByAssessmentResponse AWS API Documentation
    #
    class BatchCreateDelegationByAssessmentResponse < Struct.new(
      :delegations,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error entity for the `BatchDeleteDelegationByAssessment` API. This
    # is used to provide more meaningful errors than a simple string
    # message.
    #
    # @!attribute [rw] delegation_id
    #   The identifier for the specified delegation.
    #   @return [String]
    #
    # @!attribute [rw] error_code
    #   The error code returned by the `BatchDeleteDelegationByAssessment`
    #   API.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message returned by the
    #   `BatchDeleteDelegationByAssessment` API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/BatchDeleteDelegationByAssessmentError AWS API Documentation
    #
    class BatchDeleteDelegationByAssessmentError < Struct.new(
      :delegation_id,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDeleteDelegationByAssessmentRequest
    #   data as a hash:
    #
    #       {
    #         delegation_ids: ["UUID"], # required
    #         assessment_id: "UUID", # required
    #       }
    #
    # @!attribute [rw] delegation_ids
    #   The identifiers for the specified delegations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] assessment_id
    #   The identifier for the specified assessment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/BatchDeleteDelegationByAssessmentRequest AWS API Documentation
    #
    class BatchDeleteDelegationByAssessmentRequest < Struct.new(
      :delegation_ids,
      :assessment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   A list of errors returned by the `BatchDeleteDelegationByAssessment`
    #   API.
    #   @return [Array<Types::BatchDeleteDelegationByAssessmentError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/BatchDeleteDelegationByAssessmentResponse AWS API Documentation
    #
    class BatchDeleteDelegationByAssessmentResponse < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDisassociateAssessmentReportEvidenceRequest
    #   data as a hash:
    #
    #       {
    #         assessment_id: "UUID", # required
    #         evidence_folder_id: "UUID", # required
    #         evidence_ids: ["UUID"], # required
    #       }
    #
    # @!attribute [rw] assessment_id
    #   The identifier for the specified assessment.
    #   @return [String]
    #
    # @!attribute [rw] evidence_folder_id
    #   The identifier for the folder in which evidence is stored.
    #   @return [String]
    #
    # @!attribute [rw] evidence_ids
    #   The list of evidence identifiers.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/BatchDisassociateAssessmentReportEvidenceRequest AWS API Documentation
    #
    class BatchDisassociateAssessmentReportEvidenceRequest < Struct.new(
      :assessment_id,
      :evidence_folder_id,
      :evidence_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] evidence_ids
    #   The identifier for the evidence.
    #   @return [Array<String>]
    #
    # @!attribute [rw] errors
    #   A list of errors returned by the
    #   `BatchDisassociateAssessmentReportEvidence` API.
    #   @return [Array<Types::AssessmentReportEvidenceError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/BatchDisassociateAssessmentReportEvidenceResponse AWS API Documentation
    #
    class BatchDisassociateAssessmentReportEvidenceResponse < Struct.new(
      :evidence_ids,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error entity for the `BatchImportEvidenceToAssessmentControl` API.
    # This is used to provide more meaningful errors than a simple string
    # message.
    #
    # @!attribute [rw] manual_evidence
    #   Manual evidence that cannot be collected automatically by AWS Audit
    #   Manager.
    #   @return [Types::ManualEvidence]
    #
    # @!attribute [rw] error_code
    #   The error code returned by the
    #   `BatchImportEvidenceToAssessmentControl` API.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message returned by the
    #   `BatchImportEvidenceToAssessmentControl` API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/BatchImportEvidenceToAssessmentControlError AWS API Documentation
    #
    class BatchImportEvidenceToAssessmentControlError < Struct.new(
      :manual_evidence,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchImportEvidenceToAssessmentControlRequest
    #   data as a hash:
    #
    #       {
    #         assessment_id: "UUID", # required
    #         control_set_id: "ControlSetId", # required
    #         control_id: "UUID", # required
    #         manual_evidence: [ # required
    #           {
    #             s3_resource_path: "S3Url",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] assessment_id
    #   The identifier for the specified assessment.
    #   @return [String]
    #
    # @!attribute [rw] control_set_id
    #   The identifier for the specified control set.
    #   @return [String]
    #
    # @!attribute [rw] control_id
    #   The identifier for the specified control.
    #   @return [String]
    #
    # @!attribute [rw] manual_evidence
    #   The list of manual evidence objects.
    #   @return [Array<Types::ManualEvidence>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/BatchImportEvidenceToAssessmentControlRequest AWS API Documentation
    #
    class BatchImportEvidenceToAssessmentControlRequest < Struct.new(
      :assessment_id,
      :control_set_id,
      :control_id,
      :manual_evidence)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   A list of errors returned by the
    #   `BatchImportEvidenceToAssessmentControl` API.
    #   @return [Array<Types::BatchImportEvidenceToAssessmentControlError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/BatchImportEvidenceToAssessmentControlResponse AWS API Documentation
    #
    class BatchImportEvidenceToAssessmentControlResponse < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # The record of a change within AWS Audit Manager, such as a modified
    # assessment, a delegated control set, and so on.
    #
    # @!attribute [rw] object_type
    #   The changelog object type, such as an assessment, control, or
    #   control set.
    #   @return [String]
    #
    # @!attribute [rw] object_name
    #   The name of the changelog object.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action performed.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The time of creation for the changelog object.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The IAM user or role that performed the action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ChangeLog AWS API Documentation
    #
    class ChangeLog < Struct.new(
      :object_type,
      :object_name,
      :action,
      :created_at,
      :created_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # A control in AWS Audit Manager.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the specified control.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier for the control.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of control, such as custom or standard.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the specified control.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the specified control.
    #   @return [String]
    #
    # @!attribute [rw] testing_information
    #   The steps to follow to determine if the control has been satisfied.
    #   @return [String]
    #
    # @!attribute [rw] action_plan_title
    #   The title of the action plan for remediating the control.
    #   @return [String]
    #
    # @!attribute [rw] action_plan_instructions
    #   The recommended actions to carry out if the control is not
    #   fulfilled.
    #   @return [String]
    #
    # @!attribute [rw] control_sources
    #   The data source that determines from where AWS Audit Manager
    #   collects evidence for the control.
    #   @return [String]
    #
    # @!attribute [rw] control_mapping_sources
    #   The data mapping sources for the specified control.
    #   @return [Array<Types::ControlMappingSource>]
    #
    # @!attribute [rw] created_at
    #   Specifies when the control was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   Specifies when the control was most recently updated.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The IAM user or role that created the control.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_by
    #   The IAM user or role that most recently updated the control.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the control.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/Control AWS API Documentation
    #
    class Control < Struct.new(
      :arn,
      :id,
      :type,
      :name,
      :description,
      :testing_information,
      :action_plan_title,
      :action_plan_instructions,
      :control_sources,
      :control_mapping_sources,
      :created_at,
      :last_updated_at,
      :created_by,
      :last_updated_by,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # A comment posted by a user on a control. This includes the author's
    # name, the comment text, and a timestamp.
    #
    # @!attribute [rw] author_name
    #   The name of the user who authored the comment.
    #   @return [String]
    #
    # @!attribute [rw] comment_body
    #   The body text of a control comment.
    #   @return [String]
    #
    # @!attribute [rw] posted_date
    #   The time when the comment was posted.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ControlComment AWS API Documentation
    #
    class ControlComment < Struct.new(
      :author_name,
      :comment_body,
      :posted_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data source that determines from where AWS Audit Manager collects
    # evidence for the control.
    #
    # @note When making an API call, you may pass ControlMappingSource
    #   data as a hash:
    #
    #       {
    #         source_id: "UUID",
    #         source_name: "SourceName",
    #         source_description: "SourceDescription",
    #         source_set_up_option: "System_Controls_Mapping", # accepts System_Controls_Mapping, Procedural_Controls_Mapping
    #         source_type: "AWS_Cloudtrail", # accepts AWS_Cloudtrail, AWS_Config, AWS_Security_Hub, AWS_API_Call, MANUAL
    #         source_keyword: {
    #           keyword_input_type: "SELECT_FROM_LIST", # accepts SELECT_FROM_LIST
    #           keyword_value: "KeywordValue",
    #         },
    #         source_frequency: "DAILY", # accepts DAILY, WEEKLY, MONTHLY
    #         troubleshooting_text: "TroubleshootingText",
    #       }
    #
    # @!attribute [rw] source_id
    #   The unique identifier for the specified source.
    #   @return [String]
    #
    # @!attribute [rw] source_name
    #   The name of the specified source.
    #   @return [String]
    #
    # @!attribute [rw] source_description
    #   The description of the specified source.
    #   @return [String]
    #
    # @!attribute [rw] source_set_up_option
    #   The setup option for the data source, which reflects if the evidence
    #   collection is automated or manual.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   Specifies one of the five types of data sources for evidence
    #   collection.
    #   @return [String]
    #
    # @!attribute [rw] source_keyword
    #   The keyword to search for in AWS CloudTrail logs, AWS Config rules,
    #   AWS Security Hub checks, and AWS API names.
    #   @return [Types::SourceKeyword]
    #
    # @!attribute [rw] source_frequency
    #   The frequency of evidence collection for the specified control
    #   mapping source.
    #   @return [String]
    #
    # @!attribute [rw] troubleshooting_text
    #   The instructions for troubleshooting the specified control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ControlMappingSource AWS API Documentation
    #
    class ControlMappingSource < Struct.new(
      :source_id,
      :source_name,
      :source_description,
      :source_set_up_option,
      :source_type,
      :source_keyword,
      :source_frequency,
      :troubleshooting_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata associated with the specified standard or custom control.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the specified control.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier for the specified control.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the specified control.
    #   @return [String]
    #
    # @!attribute [rw] control_sources
    #   The data source that determines from where AWS Audit Manager
    #   collects evidence for the control.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Specifies when the control was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   Specifies when the control was most recently updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ControlMetadata AWS API Documentation
    #
    class ControlMetadata < Struct.new(
      :arn,
      :id,
      :name,
      :control_sources,
      :created_at,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of controls in AWS Audit Manager.
    #
    # @!attribute [rw] id
    #   The identifier of the control set in the assessment. This is the
    #   control set name in a plain string format.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the control set.
    #   @return [String]
    #
    # @!attribute [rw] controls
    #   The list of controls within the control set.
    #   @return [Array<Types::Control>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ControlSet AWS API Documentation
    #
    class ControlSet < Struct.new(
      :id,
      :name,
      :controls)
      SENSITIVE = []
      include Aws::Structure
    end

    # Control entity attributes that uniquely identify an existing control
    # to be added to a framework in AWS Audit Manager.
    #
    # @note When making an API call, you may pass CreateAssessmentFrameworkControl
    #   data as a hash:
    #
    #       {
    #         id: "UUID",
    #       }
    #
    # @!attribute [rw] id
    #   The unique identifier of the control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/CreateAssessmentFrameworkControl AWS API Documentation
    #
    class CreateAssessmentFrameworkControl < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `controlSet` entity that represents a collection of controls in AWS
    # Audit Manager. This does not contain the control set ID.
    #
    # @note When making an API call, you may pass CreateAssessmentFrameworkControlSet
    #   data as a hash:
    #
    #       {
    #         name: "ControlSetName",
    #         controls: [
    #           {
    #             id: "UUID",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the specified control set.
    #   @return [String]
    #
    # @!attribute [rw] controls
    #   The list of controls within the control set. This does not contain
    #   the control set ID.
    #   @return [Array<Types::CreateAssessmentFrameworkControl>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/CreateAssessmentFrameworkControlSet AWS API Documentation
    #
    class CreateAssessmentFrameworkControlSet < Struct.new(
      :name,
      :controls)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAssessmentFrameworkRequest
    #   data as a hash:
    #
    #       {
    #         name: "FrameworkName", # required
    #         description: "FrameworkDescription",
    #         compliance_type: "ComplianceType",
    #         control_sets: [ # required
    #           {
    #             name: "ControlSetName",
    #             controls: [
    #               {
    #                 id: "UUID",
    #               },
    #             ],
    #           },
    #         ],
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the new custom framework.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An optional description for the new custom framework.
    #   @return [String]
    #
    # @!attribute [rw] compliance_type
    #   The compliance type that the new custom framework supports, such as
    #   CIS or HIPAA.
    #   @return [String]
    #
    # @!attribute [rw] control_sets
    #   The control sets to be associated with the framework.
    #   @return [Array<Types::CreateAssessmentFrameworkControlSet>]
    #
    # @!attribute [rw] tags
    #   The tags associated with the framework.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/CreateAssessmentFrameworkRequest AWS API Documentation
    #
    class CreateAssessmentFrameworkRequest < Struct.new(
      :name,
      :description,
      :compliance_type,
      :control_sets,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] framework
    #   The name of the new framework returned by the
    #   `CreateAssessmentFramework` API.
    #   @return [Types::Framework]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/CreateAssessmentFrameworkResponse AWS API Documentation
    #
    class CreateAssessmentFrameworkResponse < Struct.new(
      :framework)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAssessmentReportRequest
    #   data as a hash:
    #
    #       {
    #         name: "AssessmentReportName", # required
    #         description: "AssessmentReportDescription",
    #         assessment_id: "UUID", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the new assessment report.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the assessment report.
    #   @return [String]
    #
    # @!attribute [rw] assessment_id
    #   The identifier for the specified assessment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/CreateAssessmentReportRequest AWS API Documentation
    #
    class CreateAssessmentReportRequest < Struct.new(
      :name,
      :description,
      :assessment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assessment_report
    #   The new assessment report returned by the `CreateAssessmentReport`
    #   API.
    #   @return [Types::AssessmentReport]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/CreateAssessmentReportResponse AWS API Documentation
    #
    class CreateAssessmentReportResponse < Struct.new(
      :assessment_report)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAssessmentRequest
    #   data as a hash:
    #
    #       {
    #         name: "AssessmentName", # required
    #         description: "AssessmentDescription",
    #         assessment_reports_destination: { # required
    #           destination_type: "S3", # accepts S3
    #           destination: "S3Url",
    #         },
    #         scope: { # required
    #           aws_accounts: [
    #             {
    #               id: "AccountId",
    #               email_address: "EmailAddress",
    #               name: "AccountName",
    #             },
    #           ],
    #           aws_services: [
    #             {
    #               service_name: "AWSServiceName",
    #             },
    #           ],
    #         },
    #         roles: [ # required
    #           {
    #             role_type: "PROCESS_OWNER", # accepts PROCESS_OWNER, RESOURCE_OWNER
    #             role_arn: "IamArn",
    #           },
    #         ],
    #         framework_id: "UUID", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the assessment to be created.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The optional description of the assessment to be created.
    #   @return [String]
    #
    # @!attribute [rw] assessment_reports_destination
    #   The assessment report storage destination for the specified
    #   assessment that is being created.
    #   @return [Types::AssessmentReportsDestination]
    #
    # @!attribute [rw] scope
    #   The wrapper that contains the AWS accounts and AWS services in scope
    #   for the assessment.
    #   @return [Types::Scope]
    #
    # @!attribute [rw] roles
    #   The list of roles for the specified assessment.
    #   @return [Array<Types::Role>]
    #
    # @!attribute [rw] framework_id
    #   The identifier for the specified framework.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the assessment.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/CreateAssessmentRequest AWS API Documentation
    #
    class CreateAssessmentRequest < Struct.new(
      :name,
      :description,
      :assessment_reports_destination,
      :scope,
      :roles,
      :framework_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assessment
    #   An entity that defines the scope of audit evidence collected by AWS
    #   Audit Manager. An AWS Audit Manager assessment is an implementation
    #   of an AWS Audit Manager framework.
    #   @return [Types::Assessment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/CreateAssessmentResponse AWS API Documentation
    #
    class CreateAssessmentResponse < Struct.new(
      :assessment)
      SENSITIVE = []
      include Aws::Structure
    end

    # Control mapping fields that represent the source for evidence
    # collection, along with related parameters and metadata. This does not
    # contain `mappingID`.
    #
    # @note When making an API call, you may pass CreateControlMappingSource
    #   data as a hash:
    #
    #       {
    #         source_name: "SourceName",
    #         source_description: "SourceDescription",
    #         source_set_up_option: "System_Controls_Mapping", # accepts System_Controls_Mapping, Procedural_Controls_Mapping
    #         source_type: "AWS_Cloudtrail", # accepts AWS_Cloudtrail, AWS_Config, AWS_Security_Hub, AWS_API_Call, MANUAL
    #         source_keyword: {
    #           keyword_input_type: "SELECT_FROM_LIST", # accepts SELECT_FROM_LIST
    #           keyword_value: "KeywordValue",
    #         },
    #         source_frequency: "DAILY", # accepts DAILY, WEEKLY, MONTHLY
    #         troubleshooting_text: "TroubleshootingText",
    #       }
    #
    # @!attribute [rw] source_name
    #   The name of the control mapping data source.
    #   @return [String]
    #
    # @!attribute [rw] source_description
    #   The description of the data source that determines from where AWS
    #   Audit Manager collects evidence for the control.
    #   @return [String]
    #
    # @!attribute [rw] source_set_up_option
    #   The setup option for the data source, which reflects if the evidence
    #   collection is automated or manual.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   Specifies one of the five types of data sources for evidence
    #   collection.
    #   @return [String]
    #
    # @!attribute [rw] source_keyword
    #   The keyword to search for in AWS CloudTrail logs, AWS Config rules,
    #   AWS Security Hub checks, and AWS API names.
    #   @return [Types::SourceKeyword]
    #
    # @!attribute [rw] source_frequency
    #   The frequency of evidence collection for the specified control
    #   mapping source.
    #   @return [String]
    #
    # @!attribute [rw] troubleshooting_text
    #   The instructions for troubleshooting the specified control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/CreateControlMappingSource AWS API Documentation
    #
    class CreateControlMappingSource < Struct.new(
      :source_name,
      :source_description,
      :source_set_up_option,
      :source_type,
      :source_keyword,
      :source_frequency,
      :troubleshooting_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateControlRequest
    #   data as a hash:
    #
    #       {
    #         name: "ControlName", # required
    #         description: "ControlDescription",
    #         testing_information: "TestingInformation",
    #         action_plan_title: "ActionPlanTitle",
    #         action_plan_instructions: "ActionPlanInstructions",
    #         control_mapping_sources: [ # required
    #           {
    #             source_name: "SourceName",
    #             source_description: "SourceDescription",
    #             source_set_up_option: "System_Controls_Mapping", # accepts System_Controls_Mapping, Procedural_Controls_Mapping
    #             source_type: "AWS_Cloudtrail", # accepts AWS_Cloudtrail, AWS_Config, AWS_Security_Hub, AWS_API_Call, MANUAL
    #             source_keyword: {
    #               keyword_input_type: "SELECT_FROM_LIST", # accepts SELECT_FROM_LIST
    #               keyword_value: "KeywordValue",
    #             },
    #             source_frequency: "DAILY", # accepts DAILY, WEEKLY, MONTHLY
    #             troubleshooting_text: "TroubleshootingText",
    #           },
    #         ],
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the control.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the control.
    #   @return [String]
    #
    # @!attribute [rw] testing_information
    #   The steps to follow to determine if the control has been satisfied.
    #   @return [String]
    #
    # @!attribute [rw] action_plan_title
    #   The title of the action plan for remediating the control.
    #   @return [String]
    #
    # @!attribute [rw] action_plan_instructions
    #   The recommended actions to carry out if the control is not
    #   fulfilled.
    #   @return [String]
    #
    # @!attribute [rw] control_mapping_sources
    #   The data mapping sources for the specified control.
    #   @return [Array<Types::CreateControlMappingSource>]
    #
    # @!attribute [rw] tags
    #   The tags associated with the control.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/CreateControlRequest AWS API Documentation
    #
    class CreateControlRequest < Struct.new(
      :name,
      :description,
      :testing_information,
      :action_plan_title,
      :action_plan_instructions,
      :control_mapping_sources,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] control
    #   The new control returned by the `CreateControl` API.
    #   @return [Types::Control]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/CreateControlResponse AWS API Documentation
    #
    class CreateControlResponse < Struct.new(
      :control)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of attributes used to create a delegation for an
    # assessment in AWS Audit Manager.
    #
    # @note When making an API call, you may pass CreateDelegationRequest
    #   data as a hash:
    #
    #       {
    #         comment: "DelegationComment",
    #         control_set_id: "ControlSetId",
    #         role_arn: "IamArn",
    #         role_type: "PROCESS_OWNER", # accepts PROCESS_OWNER, RESOURCE_OWNER
    #       }
    #
    # @!attribute [rw] comment
    #   A comment related to the delegation request.
    #   @return [String]
    #
    # @!attribute [rw] control_set_id
    #   The unique identifier for the control set.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role.
    #   @return [String]
    #
    # @!attribute [rw] role_type
    #   The type of customer persona.
    #
    #   <note markdown="1"> In `CreateAssessment`, `roleType` can only be `PROCESS_OWNER`.
    #
    #    In `UpdateSettings`, `roleType` can only be `PROCESS_OWNER`.
    #
    #    In `BatchCreateDelegationByAssessment`, `roleType` can only be
    #   `RESOURCE_OWNER`.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/CreateDelegationRequest AWS API Documentation
    #
    class CreateDelegationRequest < Struct.new(
      :comment,
      :control_set_id,
      :role_arn,
      :role_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The assignment of a control set to a delegate for review.
    #
    # @!attribute [rw] id
    #   The unique identifier for the delegation.
    #   @return [String]
    #
    # @!attribute [rw] assessment_name
    #   The name of the associated assessment.
    #   @return [String]
    #
    # @!attribute [rw] assessment_id
    #   The identifier for the associated assessment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the delegation.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role.
    #   @return [String]
    #
    # @!attribute [rw] role_type
    #   The type of customer persona.
    #
    #   <note markdown="1"> In `CreateAssessment`, `roleType` can only be `PROCESS_OWNER`.
    #
    #    In `UpdateSettings`, `roleType` can only be `PROCESS_OWNER`.
    #
    #    In `BatchCreateDelegationByAssessment`, `roleType` can only be
    #   `RESOURCE_OWNER`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Specifies when the delegation was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated
    #   Specifies when the delegation was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] control_set_id
    #   The identifier for the associated control set.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   The comment related to the delegation.
    #   @return [String]
    #
    # @!attribute [rw] created_by
    #   The IAM user or role that created the delegation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/Delegation AWS API Documentation
    #
    class Delegation < Struct.new(
      :id,
      :assessment_name,
      :assessment_id,
      :status,
      :role_arn,
      :role_type,
      :creation_time,
      :last_updated,
      :control_set_id,
      :comment,
      :created_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata associated with the specified delegation.
    #
    # @!attribute [rw] id
    #   The unique identifier for the delegation.
    #   @return [String]
    #
    # @!attribute [rw] assessment_name
    #   The name of the associated assessment.
    #   @return [String]
    #
    # @!attribute [rw] assessment_id
    #   The unique identifier for the specified assessment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the delgation.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Specifies when the delegation was created.
    #   @return [Time]
    #
    # @!attribute [rw] control_set_name
    #   Specifies the name of the control set delegated for review.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/DelegationMetadata AWS API Documentation
    #
    class DelegationMetadata < Struct.new(
      :id,
      :assessment_name,
      :assessment_id,
      :status,
      :role_arn,
      :creation_time,
      :control_set_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAssessmentFrameworkRequest
    #   data as a hash:
    #
    #       {
    #         framework_id: "UUID", # required
    #       }
    #
    # @!attribute [rw] framework_id
    #   The identifier for the specified framework.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/DeleteAssessmentFrameworkRequest AWS API Documentation
    #
    class DeleteAssessmentFrameworkRequest < Struct.new(
      :framework_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/DeleteAssessmentFrameworkResponse AWS API Documentation
    #
    class DeleteAssessmentFrameworkResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteAssessmentReportRequest
    #   data as a hash:
    #
    #       {
    #         assessment_id: "UUID", # required
    #         assessment_report_id: "UUID", # required
    #       }
    #
    # @!attribute [rw] assessment_id
    #   The identifier for the specified assessment.
    #   @return [String]
    #
    # @!attribute [rw] assessment_report_id
    #   The unique identifier for the assessment report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/DeleteAssessmentReportRequest AWS API Documentation
    #
    class DeleteAssessmentReportRequest < Struct.new(
      :assessment_id,
      :assessment_report_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/DeleteAssessmentReportResponse AWS API Documentation
    #
    class DeleteAssessmentReportResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteAssessmentRequest
    #   data as a hash:
    #
    #       {
    #         assessment_id: "UUID", # required
    #       }
    #
    # @!attribute [rw] assessment_id
    #   The identifier for the specified assessment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/DeleteAssessmentRequest AWS API Documentation
    #
    class DeleteAssessmentRequest < Struct.new(
      :assessment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/DeleteAssessmentResponse AWS API Documentation
    #
    class DeleteAssessmentResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteControlRequest
    #   data as a hash:
    #
    #       {
    #         control_id: "UUID", # required
    #       }
    #
    # @!attribute [rw] control_id
    #   The identifier for the specified control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/DeleteControlRequest AWS API Documentation
    #
    class DeleteControlRequest < Struct.new(
      :control_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/DeleteControlResponse AWS API Documentation
    #
    class DeleteControlResponse < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/DeregisterAccountRequest AWS API Documentation
    #
    class DeregisterAccountRequest < Aws::EmptyStructure; end

    # @!attribute [rw] status
    #   The registration status of the account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/DeregisterAccountResponse AWS API Documentation
    #
    class DeregisterAccountResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeregisterOrganizationAdminAccountRequest
    #   data as a hash:
    #
    #       {
    #         admin_account_id: "AccountId",
    #       }
    #
    # @!attribute [rw] admin_account_id
    #   The identifier for the specified administrator account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/DeregisterOrganizationAdminAccountRequest AWS API Documentation
    #
    class DeregisterOrganizationAdminAccountRequest < Struct.new(
      :admin_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/DeregisterOrganizationAdminAccountResponse AWS API Documentation
    #
    class DeregisterOrganizationAdminAccountResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DisassociateAssessmentReportEvidenceFolderRequest
    #   data as a hash:
    #
    #       {
    #         assessment_id: "UUID", # required
    #         evidence_folder_id: "UUID", # required
    #       }
    #
    # @!attribute [rw] assessment_id
    #   The identifier for the specified assessment.
    #   @return [String]
    #
    # @!attribute [rw] evidence_folder_id
    #   The identifier for the folder in which evidence is stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/DisassociateAssessmentReportEvidenceFolderRequest AWS API Documentation
    #
    class DisassociateAssessmentReportEvidenceFolderRequest < Struct.new(
      :assessment_id,
      :evidence_folder_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/DisassociateAssessmentReportEvidenceFolderResponse AWS API Documentation
    #
    class DisassociateAssessmentReportEvidenceFolderResponse < Aws::EmptyStructure; end

    # A record that contains the information needed to demonstrate
    # compliance with the requirements specified by a control. Examples of
    # evidence include change activity triggered by a user, or a system
    # configuration snapshot.
    #
    # @!attribute [rw] data_source
    #   The data source from which the specified evidence was collected.
    #   @return [String]
    #
    # @!attribute [rw] evidence_aws_account_id
    #   The identifier for the specified AWS account.
    #   @return [String]
    #
    # @!attribute [rw] time
    #   The timestamp that represents when the evidence was collected.
    #   @return [Time]
    #
    # @!attribute [rw] event_source
    #   The AWS service from which the evidence is collected.
    #   @return [String]
    #
    # @!attribute [rw] event_name
    #   The name of the specified evidence event.
    #   @return [String]
    #
    # @!attribute [rw] evidence_by_type
    #   The type of automated evidence.
    #   @return [String]
    #
    # @!attribute [rw] resources_included
    #   The list of resources assessed to generate the evidence.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] attributes
    #   The names and values used by the evidence event, including an
    #   attribute name (such as `allowUsersToChangePassword`) and value
    #   (such as `true` or `false`).
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] iam_id
    #   The unique identifier for the IAM user or role associated with the
    #   evidence.
    #   @return [String]
    #
    # @!attribute [rw] compliance_check
    #   The evaluation status for evidence that falls under the compliance
    #   check category. For evidence collected from AWS Security Hub, a
    #   *Pass* or *Fail* result is shown. For evidence collected from AWS
    #   Config, a *Compliant* or *Noncompliant* result is shown.
    #   @return [String]
    #
    # @!attribute [rw] aws_organization
    #   The AWS account from which the evidence is collected, and its AWS
    #   organization path.
    #   @return [String]
    #
    # @!attribute [rw] aws_account_id
    #   The identifier for the specified AWS account.
    #   @return [String]
    #
    # @!attribute [rw] evidence_folder_id
    #   The identifier for the folder in which the evidence is stored.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The identifier for the evidence.
    #   @return [String]
    #
    # @!attribute [rw] assessment_report_selection
    #   Specifies whether the evidence is inclded in the assessment report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/Evidence AWS API Documentation
    #
    class Evidence < Struct.new(
      :data_source,
      :evidence_aws_account_id,
      :time,
      :event_source,
      :event_name,
      :evidence_by_type,
      :resources_included,
      :attributes,
      :iam_id,
      :compliance_check,
      :aws_organization,
      :aws_account_id,
      :evidence_folder_id,
      :id,
      :assessment_report_selection)
      SENSITIVE = []
      include Aws::Structure
    end

    # The file used to structure and automate AWS Audit Manager assessments
    # for a given compliance standard.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the specified framework.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier for the specified framework.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the specified framework.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The framework type, such as custom or standard.
    #   @return [String]
    #
    # @!attribute [rw] compliance_type
    #   The compliance type that the new custom framework supports, such as
    #   CIS or HIPAA.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the specified framework.
    #   @return [String]
    #
    # @!attribute [rw] logo
    #   The logo associated with the framework.
    #   @return [String]
    #
    # @!attribute [rw] control_sources
    #   The sources from which AWS Audit Manager collects evidence for the
    #   control.
    #   @return [String]
    #
    # @!attribute [rw] control_sets
    #   The control sets associated with the framework.
    #   @return [Array<Types::ControlSet>]
    #
    # @!attribute [rw] created_at
    #   Specifies when the framework was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   Specifies when the framework was most recently updated.
    #   @return [Time]
    #
    # @!attribute [rw] created_by
    #   The IAM user or role that created the framework.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_by
    #   The IAM user or role that most recently updated the framework.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the framework.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/Framework AWS API Documentation
    #
    class Framework < Struct.new(
      :arn,
      :id,
      :name,
      :type,
      :compliance_type,
      :description,
      :logo,
      :control_sources,
      :control_sets,
      :created_at,
      :last_updated_at,
      :created_by,
      :last_updated_by,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata of a framework, such as the name, ID, description, and so
    # on.
    #
    # @!attribute [rw] name
    #   The name of the framework.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the framework.
    #   @return [String]
    #
    # @!attribute [rw] logo
    #   The logo associated with the framework.
    #   @return [String]
    #
    # @!attribute [rw] compliance_type
    #   The compliance standard associated with the framework, such as
    #   PCI-DSS or HIPAA.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/FrameworkMetadata AWS API Documentation
    #
    class FrameworkMetadata < Struct.new(
      :name,
      :description,
      :logo,
      :compliance_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetAccountStatusRequest AWS API Documentation
    #
    class GetAccountStatusRequest < Aws::EmptyStructure; end

    # @!attribute [rw] status
    #   The status of the specified AWS account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetAccountStatusResponse AWS API Documentation
    #
    class GetAccountStatusResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAssessmentFrameworkRequest
    #   data as a hash:
    #
    #       {
    #         framework_id: "UUID", # required
    #       }
    #
    # @!attribute [rw] framework_id
    #   The identifier for the specified framework.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetAssessmentFrameworkRequest AWS API Documentation
    #
    class GetAssessmentFrameworkRequest < Struct.new(
      :framework_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] framework
    #   The framework returned by the `GetAssessmentFramework` API.
    #   @return [Types::Framework]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetAssessmentFrameworkResponse AWS API Documentation
    #
    class GetAssessmentFrameworkResponse < Struct.new(
      :framework)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAssessmentReportUrlRequest
    #   data as a hash:
    #
    #       {
    #         assessment_report_id: "UUID", # required
    #         assessment_id: "UUID", # required
    #       }
    #
    # @!attribute [rw] assessment_report_id
    #   The identifier for the assessment report.
    #   @return [String]
    #
    # @!attribute [rw] assessment_id
    #   The identifier for the specified assessment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetAssessmentReportUrlRequest AWS API Documentation
    #
    class GetAssessmentReportUrlRequest < Struct.new(
      :assessment_report_id,
      :assessment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pre_signed_url
    #   A uniform resource locator, used as a unique identifier to locate a
    #   resource on the internet.
    #   @return [Types::URL]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetAssessmentReportUrlResponse AWS API Documentation
    #
    class GetAssessmentReportUrlResponse < Struct.new(
      :pre_signed_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAssessmentRequest
    #   data as a hash:
    #
    #       {
    #         assessment_id: "UUID", # required
    #       }
    #
    # @!attribute [rw] assessment_id
    #   The identifier for the specified assessment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetAssessmentRequest AWS API Documentation
    #
    class GetAssessmentRequest < Struct.new(
      :assessment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assessment
    #   An entity that defines the scope of audit evidence collected by AWS
    #   Audit Manager. An AWS Audit Manager assessment is an implementation
    #   of an AWS Audit Manager framework.
    #   @return [Types::Assessment]
    #
    # @!attribute [rw] user_role
    #   The wrapper that contains the AWS Audit Manager role information of
    #   the current user, such as the role type and IAM Amazon Resource Name
    #   (ARN).
    #   @return [Types::Role]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetAssessmentResponse AWS API Documentation
    #
    class GetAssessmentResponse < Struct.new(
      :assessment,
      :user_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetChangeLogsRequest
    #   data as a hash:
    #
    #       {
    #         assessment_id: "UUID", # required
    #         control_set_id: "ControlSetId",
    #         control_id: "UUID",
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] assessment_id
    #   The identifier for the specified assessment.
    #   @return [String]
    #
    # @!attribute [rw] control_set_id
    #   The identifier for the specified control set.
    #   @return [String]
    #
    # @!attribute [rw] control_id
    #   The identifier for the specified control.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Represents the maximum number of results per page, or per API
    #   request call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetChangeLogsRequest AWS API Documentation
    #
    class GetChangeLogsRequest < Struct.new(
      :assessment_id,
      :control_set_id,
      :control_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] change_logs
    #   The list of user activity for the control.
    #   @return [Array<Types::ChangeLog>]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to fetch the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetChangeLogsResponse AWS API Documentation
    #
    class GetChangeLogsResponse < Struct.new(
      :change_logs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetControlRequest
    #   data as a hash:
    #
    #       {
    #         control_id: "UUID", # required
    #       }
    #
    # @!attribute [rw] control_id
    #   The identifier for the specified control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetControlRequest AWS API Documentation
    #
    class GetControlRequest < Struct.new(
      :control_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] control
    #   The name of the control returned by the `GetControl` API.
    #   @return [Types::Control]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetControlResponse AWS API Documentation
    #
    class GetControlResponse < Struct.new(
      :control)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDelegationsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The pagination token used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Represents the maximum number of results per page, or per API
    #   request call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetDelegationsRequest AWS API Documentation
    #
    class GetDelegationsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] delegations
    #   The list of delegations returned by the `GetDelegations` API.
    #   @return [Array<Types::DelegationMetadata>]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to fetch the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetDelegationsResponse AWS API Documentation
    #
    class GetDelegationsResponse < Struct.new(
      :delegations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEvidenceByEvidenceFolderRequest
    #   data as a hash:
    #
    #       {
    #         assessment_id: "UUID", # required
    #         control_set_id: "ControlSetId", # required
    #         evidence_folder_id: "UUID", # required
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] assessment_id
    #   The identifier for the specified assessment.
    #   @return [String]
    #
    # @!attribute [rw] control_set_id
    #   The identifier for the control set.
    #   @return [String]
    #
    # @!attribute [rw] evidence_folder_id
    #   The unique identifier for the folder in which the evidence is
    #   stored.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Represents the maximum number of results per page, or per API
    #   request call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetEvidenceByEvidenceFolderRequest AWS API Documentation
    #
    class GetEvidenceByEvidenceFolderRequest < Struct.new(
      :assessment_id,
      :control_set_id,
      :evidence_folder_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] evidence
    #   The list of evidence returned by the `GetEvidenceByEvidenceFolder`
    #   API.
    #   @return [Array<Types::Evidence>]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to fetch the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetEvidenceByEvidenceFolderResponse AWS API Documentation
    #
    class GetEvidenceByEvidenceFolderResponse < Struct.new(
      :evidence,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEvidenceFolderRequest
    #   data as a hash:
    #
    #       {
    #         assessment_id: "UUID", # required
    #         control_set_id: "ControlSetId", # required
    #         evidence_folder_id: "UUID", # required
    #       }
    #
    # @!attribute [rw] assessment_id
    #   The identifier for the specified assessment.
    #   @return [String]
    #
    # @!attribute [rw] control_set_id
    #   The identifier for the specified control set.
    #   @return [String]
    #
    # @!attribute [rw] evidence_folder_id
    #   The identifier for the folder in which the evidence is stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetEvidenceFolderRequest AWS API Documentation
    #
    class GetEvidenceFolderRequest < Struct.new(
      :assessment_id,
      :control_set_id,
      :evidence_folder_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] evidence_folder
    #   The folder in which evidence is stored.
    #   @return [Types::AssessmentEvidenceFolder]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetEvidenceFolderResponse AWS API Documentation
    #
    class GetEvidenceFolderResponse < Struct.new(
      :evidence_folder)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEvidenceFoldersByAssessmentControlRequest
    #   data as a hash:
    #
    #       {
    #         assessment_id: "UUID", # required
    #         control_set_id: "ControlSetId", # required
    #         control_id: "UUID", # required
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] assessment_id
    #   The identifier for the specified assessment.
    #   @return [String]
    #
    # @!attribute [rw] control_set_id
    #   The identifier for the specified control set.
    #   @return [String]
    #
    # @!attribute [rw] control_id
    #   The identifier for the specified control.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Represents the maximum number of results per page, or per API
    #   request call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetEvidenceFoldersByAssessmentControlRequest AWS API Documentation
    #
    class GetEvidenceFoldersByAssessmentControlRequest < Struct.new(
      :assessment_id,
      :control_set_id,
      :control_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] evidence_folders
    #   The list of evidence folders returned by the
    #   `GetEvidenceFoldersByAssessmentControl` API.
    #   @return [Array<Types::AssessmentEvidenceFolder>]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to fetch the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetEvidenceFoldersByAssessmentControlResponse AWS API Documentation
    #
    class GetEvidenceFoldersByAssessmentControlResponse < Struct.new(
      :evidence_folders,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEvidenceFoldersByAssessmentRequest
    #   data as a hash:
    #
    #       {
    #         assessment_id: "UUID", # required
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] assessment_id
    #   The identifier for the specified assessment.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Represents the maximum number of results per page, or per API
    #   request call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetEvidenceFoldersByAssessmentRequest AWS API Documentation
    #
    class GetEvidenceFoldersByAssessmentRequest < Struct.new(
      :assessment_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] evidence_folders
    #   The list of evidence folders returned by the
    #   `GetEvidenceFoldersByAssessment` API.
    #   @return [Array<Types::AssessmentEvidenceFolder>]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to fetch the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetEvidenceFoldersByAssessmentResponse AWS API Documentation
    #
    class GetEvidenceFoldersByAssessmentResponse < Struct.new(
      :evidence_folders,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEvidenceRequest
    #   data as a hash:
    #
    #       {
    #         assessment_id: "UUID", # required
    #         control_set_id: "ControlSetId", # required
    #         evidence_folder_id: "UUID", # required
    #         evidence_id: "UUID", # required
    #       }
    #
    # @!attribute [rw] assessment_id
    #   The identifier for the specified assessment.
    #   @return [String]
    #
    # @!attribute [rw] control_set_id
    #   The identifier for the specified control set.
    #   @return [String]
    #
    # @!attribute [rw] evidence_folder_id
    #   The identifier for the folder in which the evidence is stored.
    #   @return [String]
    #
    # @!attribute [rw] evidence_id
    #   The identifier for the evidence.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetEvidenceRequest AWS API Documentation
    #
    class GetEvidenceRequest < Struct.new(
      :assessment_id,
      :control_set_id,
      :evidence_folder_id,
      :evidence_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] evidence
    #   The evidence returned by the `GetEvidenceResponse` API.
    #   @return [Types::Evidence]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetEvidenceResponse AWS API Documentation
    #
    class GetEvidenceResponse < Struct.new(
      :evidence)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetOrganizationAdminAccountRequest AWS API Documentation
    #
    class GetOrganizationAdminAccountRequest < Aws::EmptyStructure; end

    # @!attribute [rw] admin_account_id
    #   The identifier for the specified administrator account.
    #   @return [String]
    #
    # @!attribute [rw] organization_id
    #   The identifier for the specified organization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetOrganizationAdminAccountResponse AWS API Documentation
    #
    class GetOrganizationAdminAccountResponse < Struct.new(
      :admin_account_id,
      :organization_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetServicesInScopeRequest AWS API Documentation
    #
    class GetServicesInScopeRequest < Aws::EmptyStructure; end

    # @!attribute [rw] service_metadata
    #   The metadata associated with the aAWS service.
    #   @return [Array<Types::ServiceMetadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetServicesInScopeResponse AWS API Documentation
    #
    class GetServicesInScopeResponse < Struct.new(
      :service_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSettingsRequest
    #   data as a hash:
    #
    #       {
    #         attribute: "ALL", # required, accepts ALL, IS_AWS_ORG_ENABLED, SNS_TOPIC, DEFAULT_ASSESSMENT_REPORTS_DESTINATION, DEFAULT_PROCESS_OWNERS
    #       }
    #
    # @!attribute [rw] attribute
    #   The list of `SettingAttribute` enum values.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetSettingsRequest AWS API Documentation
    #
    class GetSettingsRequest < Struct.new(
      :attribute)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] settings
    #   The settings object that holds all supported AWS Audit Manager
    #   settings.
    #   @return [Types::Settings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/GetSettingsResponse AWS API Documentation
    #
    class GetSettingsResponse < Struct.new(
      :settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal service error occurred during the processing of your
    # request. Try again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAssessmentFrameworksRequest
    #   data as a hash:
    #
    #       {
    #         framework_type: "Standard", # required, accepts Standard, Custom
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] framework_type
    #   The type of framework, such as standard or custom.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Represents the maximum number of results per page, or per API
    #   request call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ListAssessmentFrameworksRequest AWS API Documentation
    #
    class ListAssessmentFrameworksRequest < Struct.new(
      :framework_type,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] framework_metadata_list
    #   The list of metadata objects for the specified framework.
    #   @return [Array<Types::AssessmentFrameworkMetadata>]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to fetch the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ListAssessmentFrameworksResponse AWS API Documentation
    #
    class ListAssessmentFrameworksResponse < Struct.new(
      :framework_metadata_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAssessmentReportsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The pagination token used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Represents the maximum number of results per page, or per API
    #   request call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ListAssessmentReportsRequest AWS API Documentation
    #
    class ListAssessmentReportsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assessment_reports
    #   The list of assessment reports returned by the
    #   `ListAssessmentReports` API.
    #   @return [Array<Types::AssessmentReportMetadata>]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to fetch the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ListAssessmentReportsResponse AWS API Documentation
    #
    class ListAssessmentReportsResponse < Struct.new(
      :assessment_reports,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAssessmentsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The pagination token used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Represents the maximum number of results per page, or per API
    #   request call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ListAssessmentsRequest AWS API Documentation
    #
    class ListAssessmentsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assessment_metadata
    #   The metadata associated with the assessment.
    #   @return [Array<Types::AssessmentMetadataItem>]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to fetch the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ListAssessmentsResponse AWS API Documentation
    #
    class ListAssessmentsResponse < Struct.new(
      :assessment_metadata,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListControlsRequest
    #   data as a hash:
    #
    #       {
    #         control_type: "Standard", # required, accepts Standard, Custom
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] control_type
    #   The type of control, such as standard or custom.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Represents the maximum number of results per page, or per API
    #   request call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ListControlsRequest AWS API Documentation
    #
    class ListControlsRequest < Struct.new(
      :control_type,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] control_metadata_list
    #   The list of control metadata objects returned by the `ListControls`
    #   API.
    #   @return [Array<Types::ControlMetadata>]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to fetch the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ListControlsResponse AWS API Documentation
    #
    class ListControlsResponse < Struct.new(
      :control_metadata_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListKeywordsForDataSourceRequest
    #   data as a hash:
    #
    #       {
    #         source: "AWS_Cloudtrail", # required, accepts AWS_Cloudtrail, AWS_Config, AWS_Security_Hub, AWS_API_Call, MANUAL
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] source
    #   The control mapping data source to which the keywords apply.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Represents the maximum number of results per page, or per API
    #   request call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ListKeywordsForDataSourceRequest AWS API Documentation
    #
    class ListKeywordsForDataSourceRequest < Struct.new(
      :source,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] keywords
    #   The list of keywords for the specified event mapping source.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to fetch the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ListKeywordsForDataSourceResponse AWS API Documentation
    #
    class ListKeywordsForDataSourceResponse < Struct.new(
      :keywords,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListNotificationsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The pagination token used to fetch the next set of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Represents the maximum number of results per page, or per API
    #   request call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ListNotificationsRequest AWS API Documentation
    #
    class ListNotificationsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] notifications
    #   The returned list of notifications.
    #   @return [Array<Types::Notification>]
    #
    # @!attribute [rw] next_token
    #   The pagination token used to fetch the next set of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ListNotificationsResponse AWS API Documentation
    #
    class ListNotificationsResponse < Struct.new(
      :notifications,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AuditManagerArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the specified resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tags returned by the `ListTagsForResource` API.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Evidence that is uploaded to AWS Audit Manager manually.
    #
    # @note When making an API call, you may pass ManualEvidence
    #   data as a hash:
    #
    #       {
    #         s3_resource_path: "S3Url",
    #       }
    #
    # @!attribute [rw] s3_resource_path
    #   The Amazon S3 URL that points to a manual evidence object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ManualEvidence AWS API Documentation
    #
    class ManualEvidence < Struct.new(
      :s3_resource_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # The notification used to inform a user of an update in AWS Audit
    # Manager. For example, this includes the notification that is sent when
    # a control set is delegated for review.
    #
    # @!attribute [rw] id
    #   The unique identifier for the notification.
    #   @return [String]
    #
    # @!attribute [rw] assessment_id
    #   The identifier for the specified assessment.
    #   @return [String]
    #
    # @!attribute [rw] assessment_name
    #   The name of the related assessment.
    #   @return [String]
    #
    # @!attribute [rw] control_set_id
    #   The identifier for the specified control set.
    #   @return [String]
    #
    # @!attribute [rw] control_set_name
    #   Specifies the name of the control set that the notification is
    #   about.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the notification.
    #   @return [String]
    #
    # @!attribute [rw] event_time
    #   The time when the notification was sent.
    #   @return [Time]
    #
    # @!attribute [rw] source
    #   The sender of the notification.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/Notification AWS API Documentation
    #
    class Notification < Struct.new(
      :id,
      :assessment_id,
      :assessment_name,
      :control_set_id,
      :control_set_name,
      :description,
      :event_time,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RegisterAccountRequest
    #   data as a hash:
    #
    #       {
    #         kms_key: "KmsKey",
    #         delegated_admin_account: "AccountId",
    #       }
    #
    # @!attribute [rw] kms_key
    #   The AWS KMS key details.
    #   @return [String]
    #
    # @!attribute [rw] delegated_admin_account
    #   The delegated administrator account for AWS Audit Manager.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/RegisterAccountRequest AWS API Documentation
    #
    class RegisterAccountRequest < Struct.new(
      :kms_key,
      :delegated_admin_account)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The status of the account registration request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/RegisterAccountResponse AWS API Documentation
    #
    class RegisterAccountResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RegisterOrganizationAdminAccountRequest
    #   data as a hash:
    #
    #       {
    #         admin_account_id: "AccountId", # required
    #       }
    #
    # @!attribute [rw] admin_account_id
    #   The identifier for the specified delegated administrator account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/RegisterOrganizationAdminAccountRequest AWS API Documentation
    #
    class RegisterOrganizationAdminAccountRequest < Struct.new(
      :admin_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] admin_account_id
    #   The identifier for the specified delegated administrator account.
    #   @return [String]
    #
    # @!attribute [rw] organization_id
    #   The identifier for the specified AWS organization.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/RegisterOrganizationAdminAccountResponse AWS API Documentation
    #
    class RegisterOrganizationAdminAccountResponse < Struct.new(
      :admin_account_id,
      :organization_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A system asset that is evaluated in an AWS Audit Manager assessment.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the specified resource.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the specified resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :arn,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource specified in the request cannot be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The unique identifier for the specified resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource affected by the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The wrapper that contains the AWS Audit Manager role information of
    # the current user, such as the role type and IAM Amazon Resource Name
    # (ARN).
    #
    # @note When making an API call, you may pass Role
    #   data as a hash:
    #
    #       {
    #         role_type: "PROCESS_OWNER", # accepts PROCESS_OWNER, RESOURCE_OWNER
    #         role_arn: "IamArn",
    #       }
    #
    # @!attribute [rw] role_type
    #   The type of customer persona.
    #
    #   <note markdown="1"> In `CreateAssessment`, `roleType` can only be `PROCESS_OWNER`.
    #
    #    In `UpdateSettings`, `roleType` can only be `PROCESS_OWNER`.
    #
    #    In `BatchCreateDelegationByAssessment`, `roleType` can only be
    #   `RESOURCE_OWNER`.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/Role AWS API Documentation
    #
    class Role < Struct.new(
      :role_type,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The wrapper that contains the AWS accounts and AWS services in scope
    # for the assessment.
    #
    # @note When making an API call, you may pass Scope
    #   data as a hash:
    #
    #       {
    #         aws_accounts: [
    #           {
    #             id: "AccountId",
    #             email_address: "EmailAddress",
    #             name: "AccountName",
    #           },
    #         ],
    #         aws_services: [
    #           {
    #             service_name: "AWSServiceName",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] aws_accounts
    #   The AWS accounts included in the scope of the assessment.
    #   @return [Array<Types::AWSAccount>]
    #
    # @!attribute [rw] aws_services
    #   The AWS services included in the scope of the assessment.
    #   @return [Array<Types::AWSService>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/Scope AWS API Documentation
    #
    class Scope < Struct.new(
      :aws_accounts,
      :aws_services)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata associated with the specified AWS service.
    #
    # @!attribute [rw] name
    #   The name of the AWS service.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The display name of the AWS service.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the specified AWS service.
    #   @return [String]
    #
    # @!attribute [rw] category
    #   The category in which the AWS service belongs, such as compute,
    #   storage, database, and so on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ServiceMetadata AWS API Documentation
    #
    class ServiceMetadata < Struct.new(
      :name,
      :display_name,
      :description,
      :category)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings object that holds all supported AWS Audit Manager
    # settings.
    #
    # @!attribute [rw] is_aws_org_enabled
    #   Specifies whether AWS Organizations is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] sns_topic
    #   The designated Amazon Simple Notification Service (Amazon SNS)
    #   topic.
    #   @return [String]
    #
    # @!attribute [rw] default_assessment_reports_destination
    #   The default storage destination for assessment reports.
    #   @return [Types::AssessmentReportsDestination]
    #
    # @!attribute [rw] default_process_owners
    #   The designated default audit owners.
    #   @return [Array<Types::Role>]
    #
    # @!attribute [rw] kms_key
    #   The AWS KMS key details.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/Settings AWS API Documentation
    #
    class Settings < Struct.new(
      :is_aws_org_enabled,
      :sns_topic,
      :default_assessment_reports_destination,
      :default_process_owners,
      :kms_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # The keyword to search for in AWS CloudTrail logs, AWS Config rules,
    # AWS Security Hub checks, and AWS API names.
    #
    # @note When making an API call, you may pass SourceKeyword
    #   data as a hash:
    #
    #       {
    #         keyword_input_type: "SELECT_FROM_LIST", # accepts SELECT_FROM_LIST
    #         keyword_value: "KeywordValue",
    #       }
    #
    # @!attribute [rw] keyword_input_type
    #   The method of input for the specified keyword.
    #   @return [String]
    #
    # @!attribute [rw] keyword_value
    #   The value of the keyword used to search AWS CloudTrail logs, AWS
    #   Config rules, AWS Security Hub checks, and AWS API names when
    #   mapping a control data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/SourceKeyword AWS API Documentation
    #
    class SourceKeyword < Struct.new(
      :keyword_input_type,
      :keyword_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AuditManagerArn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the specified resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be associated with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # A uniform resource locator, used as a unique identifier to locate a
    # resource on the internet.
    #
    # @!attribute [rw] hyperlink_name
    #   The name or word used as a hyperlink to the URL.
    #   @return [String]
    #
    # @!attribute [rw] link
    #   The unique identifier for the internet resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/URL AWS API Documentation
    #
    class URL < Struct.new(
      :hyperlink_name,
      :link)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AuditManagerArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the specified resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The name or key of the tag.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateAssessmentControlRequest
    #   data as a hash:
    #
    #       {
    #         assessment_id: "UUID", # required
    #         control_set_id: "ControlSetId", # required
    #         control_id: "UUID", # required
    #         control_status: "UNDER_REVIEW", # accepts UNDER_REVIEW, REVIEWED, INACTIVE
    #         comment_body: "ControlCommentBody",
    #       }
    #
    # @!attribute [rw] assessment_id
    #   The identifier for the specified assessment.
    #   @return [String]
    #
    # @!attribute [rw] control_set_id
    #   The identifier for the specified control set.
    #   @return [String]
    #
    # @!attribute [rw] control_id
    #   The identifier for the specified control.
    #   @return [String]
    #
    # @!attribute [rw] control_status
    #   The status of the specified control.
    #   @return [String]
    #
    # @!attribute [rw] comment_body
    #   The comment body text for the specified control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/UpdateAssessmentControlRequest AWS API Documentation
    #
    class UpdateAssessmentControlRequest < Struct.new(
      :assessment_id,
      :control_set_id,
      :control_id,
      :control_status,
      :comment_body)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] control
    #   The name of the updated control set returned by the
    #   `UpdateAssessmentControl` API.
    #   @return [Types::AssessmentControl]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/UpdateAssessmentControlResponse AWS API Documentation
    #
    class UpdateAssessmentControlResponse < Struct.new(
      :control)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAssessmentControlSetStatusRequest
    #   data as a hash:
    #
    #       {
    #         assessment_id: "UUID", # required
    #         control_set_id: "String", # required
    #         status: "ACTIVE", # required, accepts ACTIVE, UNDER_REVIEW, REVIEWED
    #         comment: "DelegationComment", # required
    #       }
    #
    # @!attribute [rw] assessment_id
    #   The identifier for the specified assessment.
    #   @return [String]
    #
    # @!attribute [rw] control_set_id
    #   The identifier for the specified control set.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the control set that is being updated.
    #   @return [String]
    #
    # @!attribute [rw] comment
    #   The comment related to the status update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/UpdateAssessmentControlSetStatusRequest AWS API Documentation
    #
    class UpdateAssessmentControlSetStatusRequest < Struct.new(
      :assessment_id,
      :control_set_id,
      :status,
      :comment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] control_set
    #   The name of the updated control set returned by the
    #   `UpdateAssessmentControlSetStatus` API.
    #   @return [Types::AssessmentControlSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/UpdateAssessmentControlSetStatusResponse AWS API Documentation
    #
    class UpdateAssessmentControlSetStatusResponse < Struct.new(
      :control_set)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `controlSet` entity that represents a collection of controls in AWS
    # Audit Manager. This does not contain the control set ID.
    #
    # @note When making an API call, you may pass UpdateAssessmentFrameworkControlSet
    #   data as a hash:
    #
    #       {
    #         id: "ControlSetName",
    #         name: "ControlSetName",
    #         controls: [
    #           {
    #             id: "UUID",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] id
    #   The unique identifier for the control set.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the control set.
    #   @return [String]
    #
    # @!attribute [rw] controls
    #   The list of controls contained within the control set.
    #   @return [Array<Types::CreateAssessmentFrameworkControl>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/UpdateAssessmentFrameworkControlSet AWS API Documentation
    #
    class UpdateAssessmentFrameworkControlSet < Struct.new(
      :id,
      :name,
      :controls)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAssessmentFrameworkRequest
    #   data as a hash:
    #
    #       {
    #         framework_id: "UUID", # required
    #         name: "FrameworkName", # required
    #         description: "FrameworkDescription",
    #         compliance_type: "ComplianceType",
    #         control_sets: [ # required
    #           {
    #             id: "ControlSetName",
    #             name: "ControlSetName",
    #             controls: [
    #               {
    #                 id: "UUID",
    #               },
    #             ],
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] framework_id
    #   The identifier for the specified framework.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the framework to be updated.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the framework that is to be updated.
    #   @return [String]
    #
    # @!attribute [rw] compliance_type
    #   The compliance type that the new custom framework supports, such as
    #   CIS or HIPAA.
    #   @return [String]
    #
    # @!attribute [rw] control_sets
    #   The control sets associated with the framework.
    #   @return [Array<Types::UpdateAssessmentFrameworkControlSet>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/UpdateAssessmentFrameworkRequest AWS API Documentation
    #
    class UpdateAssessmentFrameworkRequest < Struct.new(
      :framework_id,
      :name,
      :description,
      :compliance_type,
      :control_sets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] framework
    #   The name of the specified framework.
    #   @return [Types::Framework]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/UpdateAssessmentFrameworkResponse AWS API Documentation
    #
    class UpdateAssessmentFrameworkResponse < Struct.new(
      :framework)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAssessmentRequest
    #   data as a hash:
    #
    #       {
    #         assessment_id: "UUID", # required
    #         assessment_name: "AssessmentName",
    #         assessment_description: "AssessmentDescription",
    #         scope: { # required
    #           aws_accounts: [
    #             {
    #               id: "AccountId",
    #               email_address: "EmailAddress",
    #               name: "AccountName",
    #             },
    #           ],
    #           aws_services: [
    #             {
    #               service_name: "AWSServiceName",
    #             },
    #           ],
    #         },
    #         assessment_reports_destination: {
    #           destination_type: "S3", # accepts S3
    #           destination: "S3Url",
    #         },
    #         roles: [
    #           {
    #             role_type: "PROCESS_OWNER", # accepts PROCESS_OWNER, RESOURCE_OWNER
    #             role_arn: "IamArn",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] assessment_id
    #   The identifier for the specified assessment.
    #   @return [String]
    #
    # @!attribute [rw] assessment_name
    #   The name of the specified assessment to be updated.
    #   @return [String]
    #
    # @!attribute [rw] assessment_description
    #   The description of the specified assessment.
    #   @return [String]
    #
    # @!attribute [rw] scope
    #   The scope of the specified assessment.
    #   @return [Types::Scope]
    #
    # @!attribute [rw] assessment_reports_destination
    #   The assessment report storage destination for the specified
    #   assessment that is being updated.
    #   @return [Types::AssessmentReportsDestination]
    #
    # @!attribute [rw] roles
    #   The list of roles for the specified assessment.
    #   @return [Array<Types::Role>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/UpdateAssessmentRequest AWS API Documentation
    #
    class UpdateAssessmentRequest < Struct.new(
      :assessment_id,
      :assessment_name,
      :assessment_description,
      :scope,
      :assessment_reports_destination,
      :roles)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assessment
    #   The response object (name of the updated assessment) for the
    #   `UpdateAssessmentRequest` API.
    #   @return [Types::Assessment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/UpdateAssessmentResponse AWS API Documentation
    #
    class UpdateAssessmentResponse < Struct.new(
      :assessment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAssessmentStatusRequest
    #   data as a hash:
    #
    #       {
    #         assessment_id: "UUID", # required
    #         status: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #       }
    #
    # @!attribute [rw] assessment_id
    #   The identifier for the specified assessment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the specified assessment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/UpdateAssessmentStatusRequest AWS API Documentation
    #
    class UpdateAssessmentStatusRequest < Struct.new(
      :assessment_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assessment
    #   The name of the updated assessment returned by the
    #   `UpdateAssessmentStatus` API.
    #   @return [Types::Assessment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/UpdateAssessmentStatusResponse AWS API Documentation
    #
    class UpdateAssessmentStatusResponse < Struct.new(
      :assessment)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateControlRequest
    #   data as a hash:
    #
    #       {
    #         control_id: "UUID", # required
    #         name: "ControlName", # required
    #         description: "ControlDescription",
    #         testing_information: "TestingInformation",
    #         action_plan_title: "ActionPlanTitle",
    #         action_plan_instructions: "ActionPlanInstructions",
    #         control_mapping_sources: [ # required
    #           {
    #             source_id: "UUID",
    #             source_name: "SourceName",
    #             source_description: "SourceDescription",
    #             source_set_up_option: "System_Controls_Mapping", # accepts System_Controls_Mapping, Procedural_Controls_Mapping
    #             source_type: "AWS_Cloudtrail", # accepts AWS_Cloudtrail, AWS_Config, AWS_Security_Hub, AWS_API_Call, MANUAL
    #             source_keyword: {
    #               keyword_input_type: "SELECT_FROM_LIST", # accepts SELECT_FROM_LIST
    #               keyword_value: "KeywordValue",
    #             },
    #             source_frequency: "DAILY", # accepts DAILY, WEEKLY, MONTHLY
    #             troubleshooting_text: "TroubleshootingText",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] control_id
    #   The identifier for the specified control.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the control to be updated.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The optional description of the control.
    #   @return [String]
    #
    # @!attribute [rw] testing_information
    #   The steps that to follow to determine if the control has been
    #   satisfied.
    #   @return [String]
    #
    # @!attribute [rw] action_plan_title
    #   The title of the action plan for remediating the control.
    #   @return [String]
    #
    # @!attribute [rw] action_plan_instructions
    #   The recommended actions to carry out if the control is not
    #   fulfilled.
    #   @return [String]
    #
    # @!attribute [rw] control_mapping_sources
    #   The data mapping sources for the specified control.
    #   @return [Array<Types::ControlMappingSource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/UpdateControlRequest AWS API Documentation
    #
    class UpdateControlRequest < Struct.new(
      :control_id,
      :name,
      :description,
      :testing_information,
      :action_plan_title,
      :action_plan_instructions,
      :control_mapping_sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] control
    #   The name of the updated control set returned by the `UpdateControl`
    #   API.
    #   @return [Types::Control]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/UpdateControlResponse AWS API Documentation
    #
    class UpdateControlResponse < Struct.new(
      :control)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateSettingsRequest
    #   data as a hash:
    #
    #       {
    #         sns_topic: "SnsArn",
    #         default_assessment_reports_destination: {
    #           destination_type: "S3", # accepts S3
    #           destination: "S3Url",
    #         },
    #         default_process_owners: [
    #           {
    #             role_type: "PROCESS_OWNER", # accepts PROCESS_OWNER, RESOURCE_OWNER
    #             role_arn: "IamArn",
    #           },
    #         ],
    #         kms_key: "KmsKey",
    #       }
    #
    # @!attribute [rw] sns_topic
    #   The Amazon Simple Notification Service (Amazon SNS) topic to which
    #   AWS Audit Manager sends notifications.
    #   @return [String]
    #
    # @!attribute [rw] default_assessment_reports_destination
    #   The default storage destination for assessment reports.
    #   @return [Types::AssessmentReportsDestination]
    #
    # @!attribute [rw] default_process_owners
    #   A list of the default audit owners.
    #   @return [Array<Types::Role>]
    #
    # @!attribute [rw] kms_key
    #   The AWS KMS key details.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/UpdateSettingsRequest AWS API Documentation
    #
    class UpdateSettingsRequest < Struct.new(
      :sns_topic,
      :default_assessment_reports_destination,
      :default_process_owners,
      :kms_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] settings
    #   The current list of settings.
    #   @return [Types::Settings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/UpdateSettingsResponse AWS API Documentation
    #
    class UpdateSettingsResponse < Struct.new(
      :settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ValidateAssessmentReportIntegrityRequest
    #   data as a hash:
    #
    #       {
    #         s3_relative_path: "S3Url", # required
    #       }
    #
    # @!attribute [rw] s3_relative_path
    #   The relative path of the specified Amazon S3 bucket in which the
    #   assessment report is stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ValidateAssessmentReportIntegrityRequest AWS API Documentation
    #
    class ValidateAssessmentReportIntegrityRequest < Struct.new(
      :s3_relative_path)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] signature_valid
    #   Specifies whether the signature key is valid.
    #   @return [Boolean]
    #
    # @!attribute [rw] signature_algorithm
    #   The signature algorithm used to code sign the assessment report
    #   file.
    #   @return [String]
    #
    # @!attribute [rw] signature_date_time
    #   The date and time signature that specifies when the assessment
    #   report was created.
    #   @return [String]
    #
    # @!attribute [rw] signature_key_id
    #   The unique identifier for the validation signature key.
    #   @return [String]
    #
    # @!attribute [rw] validation_errors
    #   Represents any errors that occurred when validating the assessment
    #   report.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ValidateAssessmentReportIntegrityResponse AWS API Documentation
    #
    class ValidateAssessmentReportIntegrityResponse < Struct.new(
      :signature_valid,
      :signature_algorithm,
      :signature_date_time,
      :signature_key_id,
      :validation_errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request has invalid or missing parameters.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason the request failed validation.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   The fields that caused the error, if applicable.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that the request has invalid or missing parameters for the
    # specified field.
    #
    # @!attribute [rw] name
    #   The name of the validation error.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The body of the error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/auditmanager-2017-07-25/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
