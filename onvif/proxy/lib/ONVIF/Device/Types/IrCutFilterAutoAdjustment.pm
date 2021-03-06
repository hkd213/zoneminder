package ONVIF::Device::Types::IrCutFilterAutoAdjustment;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %BoundaryType_of :ATTR(:get<BoundaryType>);
my %BoundaryOffset_of :ATTR(:get<BoundaryOffset>);
my %ResponseTime_of :ATTR(:get<ResponseTime>);
my %Extension_of :ATTR(:get<Extension>);

__PACKAGE__->_factory(
    [ qw(        BoundaryType
        BoundaryOffset
        ResponseTime
        Extension

    ) ],
    {
        'BoundaryType' => \%BoundaryType_of,
        'BoundaryOffset' => \%BoundaryOffset_of,
        'ResponseTime' => \%ResponseTime_of,
        'Extension' => \%Extension_of,
    },
    {
        'BoundaryType' => 'SOAP::WSDL::XSD::Typelib::Builtin::string',
        'BoundaryOffset' => 'SOAP::WSDL::XSD::Typelib::Builtin::float',
        'ResponseTime' => 'SOAP::WSDL::XSD::Typelib::Builtin::duration',
        'Extension' => 'ONVIF::Device::Types::IrCutFilterAutoAdjustmentExtension',
    },
    {

        'BoundaryType' => 'BoundaryType',
        'BoundaryOffset' => 'BoundaryOffset',
        'ResponseTime' => 'ResponseTime',
        'Extension' => 'Extension',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Device::Types::IrCutFilterAutoAdjustment

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
IrCutFilterAutoAdjustment from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * BoundaryType


=item * BoundaryOffset


=item * ResponseTime


=item * Extension




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Device::Types::IrCutFilterAutoAdjustment
   BoundaryType =>  $some_value, # string
   BoundaryOffset =>  $some_value, # float
   ResponseTime =>  $some_value, # duration
   Extension =>  { # ONVIF::Device::Types::IrCutFilterAutoAdjustmentExtension
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

