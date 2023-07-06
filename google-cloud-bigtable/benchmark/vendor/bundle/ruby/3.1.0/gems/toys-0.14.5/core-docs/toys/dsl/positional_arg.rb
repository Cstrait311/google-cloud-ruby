module Toys
  module DSL
    ##
    # **_Defined in the toys-core gem_**
    #
    # DSL for an arg definition block. Lets you set arg attributes in a block
    # instead of a long series of keyword arguments.
    #
    # These directives are available inside a block passed to
    # {Toys::DSL::Tool#required_arg}, {Toys::DSL::Tool#optional_arg}, or
    # {Toys::DSL::Tool#remaining_args}.
    #
    # ### Example
    #
    #     tool "mytool" do
    #       optional_arg :value do
    #         # The directives in here are defined by this class
    #         accept Integer
    #         desc "An integer value"
    #       end
    #       # ...
    #     end
    #
    class PositionalArg
      ##
      # Set the acceptor for this argument's values.
      # You can pass either the string name of an acceptor defined in this tool
      # or any of its ancestors, or any other specification recognized by
      # {Toys::Acceptor.create}.
      #
      # @param spec [Object]
      # @param options [Hash]
      # @param block [Proc]
      # @return [self]
      #
      def accept(spec = nil, **options, &block)
        # Source available in the toys-core gem
      end

      ##
      # Set the default value.
      #
      # @param default [Object]
      # @return [self]
      #
      def default(default)
        # Source available in the toys-core gem
      end

      ##
      # Set the shell completion strategy for arg values.
      # You can pass either the string name of a completion defined in this
      # tool or any of its ancestors, or any other specification recognized by
      # {Toys::Completion.create}.
      #
      # @param spec [Object]
      # @param options [Hash]
      # @param block [Proc]
      # @return [self]
      #
      def complete(spec = nil, **options, &block)
        # Source available in the toys-core gem
      end

      ##
      # Set the name of this arg as it appears in help screens.
      #
      # @param display_name [String]
      # @return [self]
      #
      def display_name(display_name)
        # Source available in the toys-core gem
      end

      ##
      # Set the short description for the current positional argument. The
      # short description is displayed with the argument in online help.
      #
      # The description is a {Toys::WrappableString}, which may be word-wrapped
      # when displayed in a help screen. You may pass a {Toys::WrappableString}
      # directly to this method, or you may pass any input that can be used to
      # construct a wrappable string:
      #
      #  *  If you pass a String, its whitespace will be compacted (i.e. tabs,
      #     newlines, and multiple consecutive whitespace will be turned into a
      #     single space), and it will be word-wrapped on whitespace.
      #  *  If you pass an Array of Strings, each string will be considered a
      #     literal word that cannot be broken, and wrapping will be done
      #     across the strings in the array. In this case, whitespace is not
      #     compacted.
      #
      # ### Examples
      #
      # If you pass in a sentence as a simple string, it may be word wrapped
      # when displayed:
      #
      #     desc "This sentence may be wrapped."
      #
      # To specify a sentence that should never be word-wrapped, pass it as the
      # sole element of a string array:
      #
      #     desc ["This sentence will not be wrapped."]
      #
      # @param desc [String,Array<String>,Toys::WrappableString]
      # @return [self]
      #
      def desc(desc)
        # Source available in the toys-core gem
      end

      ##
      # Add to the long description for the current positional argument. The
      # long description is displayed with the argument in online help. This
      # directive may be given multiple times, and the results are cumulative.
      #
      # A long description is a series of descriptions, which are generally
      # displayed in a series of lines/paragraphs. Each individual description
      # uses the form described in the {#desc} documentation, and may be
      # word-wrapped when displayed. To insert a blank line, include an empty
      # string as one of the descriptions.
      #
      # ### Example
      #
      #     long_desc "This initial paragraph might get word wrapped.",
      #               "This next paragraph is followed by a blank line.",
      #               "",
      #               ["This line will not be wrapped."],
      #               ["    This indent is preserved."]
      #     long_desc "This line is appended to the description."
      #
      # @param long_desc [String,Array<String>,Toys::WrappableString...]
      # @return [self]
      #
      def long_desc(*long_desc)
        # Source available in the toys-core gem
      end
    end
  end
end
