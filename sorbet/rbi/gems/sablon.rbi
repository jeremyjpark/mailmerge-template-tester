# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/sablon/all/sablon.rbi
#
# sablon-0.3.2

module Sablon
  def self.configure; end
  def self.content(type, *args); end
  def self.template(path); end
end
class Sablon::Configuration
  def defined_style_conversions; end
  def defined_style_conversions=(arg0); end
  def initialize; end
  def initialize_css_style_conversion; end
  def initialize_html_tags; end
  def permitted_html_tags; end
  def permitted_html_tags=(arg0); end
  def register_html_tag(tag_name, type = nil, **options); end
  def register_style_converter(ast_node, prop_name, converter); end
  def remove_html_tag(tag_name); end
  def remove_style_converter(ast_node, prop_name); end
  def self.allocate; end
  def self.new(*arg0); end
  extend Singleton::SingletonClassMethods
  include Singleton
end
class Sablon::Configuration::HTMLTag
  def allowed_child?(tag); end
  def allowed_children; end
  def allowed_children=(value); end
  def ast_class; end
  def ast_class=(value); end
  def attributes; end
  def initialize(name, type, ast_class: nil, **options); end
  def name; end
  def properties; end
  def type; end
end
module Sablon::Context
  def self.transform_hash(hash); end
  def self.transform_pair(key, value); end
  def self.transform_standard_key(key, value); end
end
class Sablon::Environment
  def alter_context(context = nil); end
  def context; end
  def document; end
  def initialize(template, context = nil); end
  def section_properties; end
  def section_properties=(properties); end
  def template; end
end
module Sablon::DOM
  def self.handlers; end
  def self.register_dom_handler(pattern, klass); end
  def self.wrap_with_handler(entry_name, content); end
end
class Sablon::DOM::FileHandler
  def initialize(content); end
  def max_attribute_value(xml_node, selector, attr_name, query_method: nil); end
  def self.extend_model(model_klass, &block); end
end
class Sablon::DOM::ContentTypes < Sablon::DOM::FileHandler
  def add_content_type(extension, type); end
  def initialize(xml_node); end
  def self.extend_model(model_klass); end
end
class Sablon::DOM::Numbering < Sablon::DOM::FileHandler
  def abstract_tag(definition); end
  def add_list_definition(style); end
  def create_definition(style); end
  def definition_tag(definition); end
  def find_abstract_definition(style); end
  def initialize(xml_node); end
  def max_attribute_value(selector, attr_name); end
  def self.extend_model(model_klass, &block); end
end
class Sablon::DOM::Numbering::Definition < Struct
  def abstract_id; end
  def abstract_id=(_); end
  def numid; end
  def numid=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def style; end
  def style=(_); end
end
class Sablon::DOM::Relationships < Sablon::DOM::FileHandler
  def add_relationship(rel_attr); end
  def find_relationship_by(attribute, value); end
  def initialize(xml_node); end
  def max_attribute_value(selector, attr_name); end
  def next_rid; end
  def relationship_tag(rel_attr); end
  def self.extend_model(model_klass); end
  def self.file_template; end
  def self.rels_entry_name_for(entry_name); end
end
class Sablon::DOM::Model
  def [](entry_name); end
  def add_content_type(extension, type); end
  def add_list_definition(style); end
  def add_media(name, data, rel_attr); end
  def add_relationship(rel_attr); end
  def build_dom(entries); end
  def create_entry_if_not_exist(name, init_content = nil); end
  def current_entry; end
  def current_entry=(arg0); end
  def find_relationship_by(attribute, value, entry = nil); end
  def initialize(zip_io_stream); end
  def wrap_entry(entry_name, content); end
  def zip_contents; end
end
module Sablon::Processor
end
class Sablon::Processor::Document
  def build_operations(fields); end
  def cleanup(xml_node); end
  def fill_empty_table_cells(xml_node); end
  def initialize(parser); end
  def manipulate(xml_node, env); end
  def self.default_field_handler; end
  def self.field_handlers; end
  def self.parser; end
  def self.process(xml_node, env); end
  def self.register_field_handler(name, handler); end
  def self.remove_field_handler(name); end
  def self.replace_field_handler(name, handler); end
end
class Sablon::Processor::Document::Block
  def body; end
  def end_field; end
  def end_field=(arg0); end
  def end_node; end
  def initialize(start_field, end_field); end
  def process(env); end
  def remove_control_elements; end
  def replace(content); end
  def self.enclosed_by(start_field, end_field); end
  def self.encloses?(start_field, end_field); end
  def self.parent(node); end
  def self.parent_selector; end
  def start_field; end
  def start_field=(arg0); end
  def start_node; end
end
class Sablon::Processor::Document::RowBlock < Sablon::Processor::Document::Block
  def self.encloses?(start_field, end_field); end
  def self.parent_selector; end
end
class Sablon::Processor::Document::ParagraphBlock < Sablon::Processor::Document::Block
  def self.encloses?(start_field, end_field); end
end
class Sablon::Processor::Document::ImageBlock < Sablon::Processor::Document::ParagraphBlock
  def replace(image); end
  def self.encloses?(start_field, end_field); end
end
class Sablon::Processor::Document::InlineParagraphBlock < Sablon::Processor::Document::Block
  def end_node; end
  def remove_control_elements; end
  def self.encloses?(start_field, end_field); end
  def start_node; end
end
class Sablon::Processor::Document::FieldHandler
  def build_statement(constructor, field, options = nil); end
  def handles?(field); end
  def initialize(pattern); end
end
class Sablon::Processor::Document::InsertionHandler < Sablon::Processor::Document::FieldHandler
  def build_statement(_constructor, field, options = nil); end
  def initialize; end
end
class Sablon::Processor::Document::EachLoopHandler < Sablon::Processor::Document::FieldHandler
  def build_statement(constructor, field, _options = nil); end
  def initialize; end
end
class Sablon::Processor::Document::ConditionalHandler < Sablon::Processor::Document::FieldHandler
  def build_statement(constructor, field, _options = nil); end
  def initialize; end
  def process_blocks(blocks); end
end
class Sablon::Processor::Document::ImageHandler < Sablon::Processor::Document::FieldHandler
  def build_statement(constructor, field, _options = nil); end
  def initialize; end
end
class Sablon::Processor::Document::CommentHandler < Sablon::Processor::Document::FieldHandler
  def build_statement(constructor, _field, _options = nil); end
  def initialize; end
end
class Sablon::Processor::Document::OperationConstruction
  def consume(allow_insertion); end
  def consume_block(end_expression); end
  def consume_multi_block(end_expression, *sub_expr_patterns); end
  def initialize(fields, field_handlers, default_handler); end
  def operations; end
end
class Sablon::Processor::SectionProperties
  def find_or_add_pg_num_type; end
  def initialize(xml_node); end
  def pg_num_type; end
  def self.process(xml_node, env); end
  def start_page_number; end
  def start_page_number=(number); end
  def write_properties(properties = nil); end
end
class Sablon::Template
  def create_dirs_in_zipfile(created_dirs, entry_path, output_stream); end
  def document; end
  def generate_output_file(zip_out, contents); end
  def initialize(path); end
  def process(env); end
  def render(context, properties = nil); end
  def render_to_file(output_path, context, properties = nil); end
  def render_to_string(context, properties = nil); end
  def self.get_processors(entry_name); end
  def self.processors; end
  def self.register_processor(pattern, klass, replace_all: nil); end
end
module Sablon::Parser
end
class Sablon::Parser::MailMerge
  def build_complex_field(node); end
  def parse_fields(xml); end
end
class Sablon::Parser::MailMerge::MergeField
  def block_reference_count; end
  def block_reference_count=(arg0); end
  def expression; end
  def get_display_node(node); end
  def initialize; end
  def remove_or_decrement_ref(*nodes); end
  def replace_field_display(node, content, env); end
  def valid?; end
end
class Sablon::Parser::MailMerge::ComplexField < Sablon::Parser::MailMerge::MergeField
  def ancestors(*args); end
  def end_node; end
  def initialize(nodes); end
  def pattern_node; end
  def remove; end
  def remove_parent(selector); end
  def replace(content, env); end
  def separate_node; end
  def start_node; end
  def valid?; end
end
class Sablon::Parser::MailMerge::SimpleField < Sablon::Parser::MailMerge::MergeField
  def ancestors(*args); end
  def end_node; end
  def initialize(node); end
  def remove; end
  def remove_extra_runs!; end
  def remove_parent(selector); end
  def replace(content, env); end
  def start_node; end
end
module Sablon::Statement
end
class Anonymous_Struct_11 < Struct
  def expr; end
  def expr=(_); end
  def field; end
  def field=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class Sablon::Statement::Insertion < Anonymous_Struct_11
  def evaluate(env); end
end
class Anonymous_Struct_12 < Struct
  def block; end
  def block=(_); end
  def iterator_name; end
  def iterator_name=(_); end
  def list_expr; end
  def list_expr=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class Sablon::Statement::Loop < Anonymous_Struct_12
  def evaluate(env); end
  def update_tag_attribute(content, tag_name, attr_name, init_val); end
  def update_unique_ids(env, content); end
end
class Sablon::Statement::Condition
  def eval_conditional_blocks(env); end
  def evaluate(env); end
  def initialize(conditions); end
  def truthy?(value); end
end
class Anonymous_Struct_13 < Struct
  def block; end
  def block=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class Sablon::Statement::Comment < Anonymous_Struct_13
  def evaluate(_env); end
end
class Anonymous_Struct_14 < Struct
  def block; end
  def block=(_); end
  def image_reference; end
  def image_reference=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class Sablon::Statement::Image < Anonymous_Struct_14
  def evaluate(env); end
  def set_local_rid(env, image); end
end
module Sablon::Expression
  def self.parse(expression); end
end
class Anonymous_Struct_15 < Struct
  def name; end
  def name=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class Sablon::Expression::Variable < Anonymous_Struct_15
  def evaluate(context); end
  def inspect; end
end
class Anonymous_Struct_16 < Struct
  def expression; end
  def expression=(_); end
  def receiver_expr; end
  def receiver_expr=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class Sablon::Expression::LookupOrMethodCall < Anonymous_Struct_16
  def evaluate(context); end
  def inspect; end
end
class Sablon::HTMLConverter
  def build_ast(input); end
  def process(input, env); end
  def processed_ast(input); end
end
class Sablon::HTMLConverter::ASTBuilder
  def drop_text?(child); end
  def fetch_tag(tag_name); end
  def initialize(env, nodes, properties); end
  def merge_node_properties(node, tag, parent_properties); end
  def nodes; end
  def process_nodes(html_nodes, properties); end
  def self.any_block_tags?(nodes); end
  def self.fetch_tag(tag_name); end
  def self.html_to_ast(env, nodes, properties); end
  def validate_structure(parent, child); end
end
class Sablon::HTMLConverter::NodeProperties
  def [](key); end
  def []=(key, value); end
  def filter_properties(properties, whitelist); end
  def initialize(tagname, properties, whitelist); end
  def inspect; end
  def properties_word_ml; end
  def self.paragraph(properties); end
  def self.run(properties); end
  def self.table(properties); end
  def self.table_cell(properties); end
  def self.table_row(properties); end
  def to_docx; end
  def transferred_properties; end
  def transform_attr(key, value); end
end
class Sablon::HTMLConverter::Node
  def accept(visitor); end
  def attributes_to_docx; end
  def children_to_docx; end
  def initialize(_env, _node, _properties); end
  def self.convert_style_property(key, value); end
  def self.node_name; end
  def self.process_properties(properties); end
  def self.style_conversion; end
  def to_docx(tag); end
  def transferred_properties; end
end
class Sablon::HTMLConverter::Collection < Sablon::HTMLConverter::Node
  def <<(node); end
  def accept(visitor); end
  def initialize(nodes); end
  def inspect; end
  def nodes; end
  def to_docx; end
end
class Sablon::HTMLConverter::Root < Sablon::HTMLConverter::Collection
  def grep(pattern); end
  def initialize(env, node); end
  def inspect; end
end
class Sablon::HTMLConverter::Paragraph < Sablon::HTMLConverter::Node
  def accept(visitor); end
  def children_to_docx; end
  def initialize(env, node, properties); end
  def inspect; end
  def runs; end
  def runs=(arg0); end
  def to_docx; end
end
class Sablon::HTMLConverter::List < Sablon::HTMLConverter::Collection
  def initialize(env, node, properties); end
  def inspect; end
  def merge_attributes(child, parent_attributes); end
  def process_child_nodes(node); end
  def transfer_node_attributes(nodes, attributes); end
end
class Sablon::HTMLConverter::ListParagraph < Sablon::HTMLConverter::Paragraph
  def initialize(env, node, properties); end
  def transferred_properties; end
end
class Sablon::HTMLConverter::Table < Sablon::HTMLConverter::Node
  def accept(visitor); end
  def children_to_docx; end
  def initialize(env, node, properties); end
  def inspect; end
  def to_docx; end
end
class Sablon::HTMLConverter::TableRow < Sablon::HTMLConverter::Node
  def accept(visitor); end
  def children_to_docx; end
  def initialize(env, node, properties); end
  def inspect; end
  def to_docx; end
end
class Sablon::HTMLConverter::TableCell < Sablon::HTMLConverter::Node
  def accept(visitor); end
  def children_to_docx; end
  def initialize(env, node, properties); end
  def inspect; end
  def new_paragraph(env); end
  def to_docx; end
  def wrap_with_paragraphs(env, nodes); end
  def wrapped_by_paragraph; end
end
class Sablon::HTMLConverter::Run < Sablon::HTMLConverter::Node
  def children_to_docx; end
  def initialize(_env, node, properties); end
  def inspect; end
  def to_docx; end
end
class Sablon::HTMLConverter::Newline < Sablon::HTMLConverter::Run
  def children_to_docx; end
  def initialize(*arg0); end
  def inspect; end
end
class Sablon::HTMLConverter::Hyperlink < Sablon::HTMLConverter::Node
  def accept(visitor); end
  def children_to_docx; end
  def initialize(env, node, properties); end
  def inspect; end
  def to_docx; end
end
class Sablon::HTMLConverter::Visitor
  def visit(node); end
end
class Sablon::HTMLConverter::GrepVisitor
  def initialize(pattern); end
  def result; end
  def visit(node); end
end
class Sablon::HTMLConverter::LastNewlineRemoverVisitor < Sablon::HTMLConverter::Visitor
  def visit_Paragraph(par); end
end
module Sablon::Content
  def self.make(type_id, *args); end
  def self.register(content_type); end
  def self.remove(content_type_or_id); end
  def self.type_wrapping(value); end
  def self.types; end
  def self.wrap(value); end
end
class Anonymous_Struct_17 < Struct
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def string; end
  def string=(_); end
end
class Sablon::Content::String < Anonymous_Struct_17
  def append_to(paragraph, display_node, env); end
  def initialize(value); end
  def self.id; end
  def self.wraps?(value); end
  include Sablon::Content
end
class Anonymous_Struct_18 < Struct
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
  def xml; end
  def xml=(_); end
end
class Sablon::Content::WordML < Anonymous_Struct_18
  def ==(other); end
  def add_siblings_to(node, rpr_tag = nil); end
  def all_inline?; end
  def append_to(paragraph, display_node, env); end
  def initialize(value); end
  def inline_tags; end
  def merge_rpr_tags(node, props); end
  def self.id; end
  def self.wraps?(value); end
  include Sablon::Content
end
class Anonymous_Struct_19 < Struct
  def html_content; end
  def html_content=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class Sablon::Content::HTML < Anonymous_Struct_19
  def append_to(paragraph, display_node, env); end
  def initialize(value); end
  def self.id; end
  def self.wraps?(value); end
  include Sablon::Content
end
class Anonymous_Struct_20 < Struct
  def data; end
  def data=(_); end
  def name; end
  def name=(_); end
  def properties; end
  def properties=(_); end
  def self.[](*arg0); end
  def self.inspect; end
  def self.members; end
  def self.new(*arg0); end
end
class Sablon::Content::Image < Anonymous_Struct_20
  def append_to(paragraph, display_node, env); end
  def convert_to_emu(dim_str); end
  def height; end
  def initialize(source, attributes = nil); end
  def inspect; end
  def local_rid; end
  def local_rid=(arg0); end
  def process_readable(source, attributes); end
  def rid_by_file; end
  def self.id; end
  def self.wraps?(value); end
  def width; end
end
class Sablon::TemplateError < ArgumentError
end
class Sablon::ContextError < ArgumentError
end