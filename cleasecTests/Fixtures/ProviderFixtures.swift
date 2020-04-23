//
//  ProviderFixtures.swift
//  cleasecTests
//
//  Created by Sebastian Edward Shanus on 4/22/20.
//  Copyright © 2020 Square, Inc. All rights reserved.
//

import Foundation

struct ProviderFixtures {
    /**
     ````
     struct A {
         let number: Int
     }
     struct MyOtherWorld {
         static func configureMyInt(aaaa: ReceiptBinder<A>) -> BindingReceipt<A> {
             return aaaa.to(factory: A.init)
         }
     }

     struct AModule: Module {
         static func configure(binder: Binder<Unscoped>) {
         }
         
         static func thisWorld(bbbb: ReceiptBinder<Int>) -> BindingReceipt<Int> {
             bbbb.to(value: 4)
         }
     }
     ````
     */
    static let danglingProviderFixtures = """
(source_file "/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift"
  (import_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:9:1 - line:9:8] 'Foundation')
  (import_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:10:1 - line:10:8] 'Cleanse')
  (struct_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:12:1 - line:14:1] "A" interface type='A.Type' access=internal non-resilient
    (pattern_binding_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:13:5 - line:13:17]
      (pattern_typed type='Int'
        (pattern_named type='Int' 'number')
        (type_ident
          (component id='Int' bind=Swift.(file).Int))))
    (var_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:13:9 - line:13:9] "number" type='Int' interface type='Int' access=internal let readImpl=stored immutable
      (accessor_decl implicit range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:13:9 - line:13:9] 'anonname=0x7fe2e90e8068' interface type='(A) -> () -> Int' access=internal get_for=number
        (parameter "self" interface type='A')
        (parameter_list)
        (brace_stmt implicit range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:13:9 - line:13:9]
          (return_stmt implicit
            (member_ref_expr implicit type='Int' decl=Test.(file).A.number@/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:13:9 direct_to_storage
              (declref_expr implicit type='A' decl=Test.(file).A.<anonymous>.self@/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:13:9 function_ref=unapplied))))))
    (accessor_decl implicit range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:13:9 - line:13:9] 'anonname=0x7fe2e90e8068' interface type='(A) -> () -> Int' access=internal get_for=number
      (parameter "self" interface type='A')
      (parameter_list)
      (brace_stmt implicit range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:13:9 - line:13:9]
        (return_stmt implicit
          (member_ref_expr implicit type='Int' decl=Test.(file).A.number@/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:13:9 direct_to_storage
            (declref_expr implicit type='A' decl=Test.(file).A.<anonymous>.self@/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:13:9 function_ref=unapplied)))))
    (constructor_decl implicit range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:12:8 - line:12:8] "init(number:)" interface type='(A.Type) -> (Int) -> A' access=internal designated
      (parameter "self" interface type='A' inout)
      (parameter_list
        (parameter "number" apiName=number interface type='Int') range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:12:8 - line:12:8])))
  (struct_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:15:1 - line:19:1] "MyOtherWorld" interface type='MyOtherWorld.Type' access=internal non-resilient
    (func_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:16:5 - line:18:5] "configureMyInt(aaaa:)" interface type='(MyOtherWorld.Type) -> (ReceiptBinder<A>) -> BindingReceipt<A>' access=internal type
      (parameter "self" interface type='MyOtherWorld.Type')
      (parameter_list
        (parameter "aaaa" apiName=aaaa interface type='ReceiptBinder<A>') range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:16:31 - line:16:54])
      (result
        (type_ident
          (component id='BindingReceipt' bind=Cleanse.(file).BindingReceipt)
            (type_ident
              (component id='A' bind=Test.(file).A@/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:12:8))))
      (brace_stmt range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:16:77 - line:18:5]
        (return_stmt range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:9 - line:17:39]
          (call_expr type='BindingReceipt<A>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:21 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:16 - line:17:39] nothrow arg_labels=factory:
            (dot_syntax_call_expr type='(StaticString, Int, StaticString, @escaping ((Int)) -> A) -> BindingReceipt<A>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:21 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:16 - line:17:21] nothrow
              (declref_expr type='(ReceiptBinder<A>) -> (StaticString, Int, StaticString, @escaping ((Int)) -> A) -> BindingReceipt<A>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:21 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:21 - line:17:21] decl=Cleanse.(file).BindToable extension.to(file:line:function:factory:) [with (substitution_map generic_signature=<Self, P_1 where Self : BindToable> (substitution Self -> ReceiptBinder<A>) (substitution P_1 -> Int))] function_ref=single)
              (declref_expr type='ReceiptBinder<A>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:16 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:16 - line:17:16] decl=Test.(file).MyOtherWorld.configureMyInt(aaaa:).aaaa@/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:16:32 function_ref=unapplied))
            (argument_shuffle_expr implicit type='(file: StaticString, line: Int, function: StaticString, factory: ((Int)) -> A)' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:23 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:23 - line:17:39] tuple_to_tuple elements=[-3, -3, -3, 0] variadic_sources=[] default_args_owner=Cleanse.(file).BindToable extension.to(file:line:function:factory:) [with (substitution_map generic_signature=<Self, P_1 where Self : BindToable> (substitution Self -> ReceiptBinder<A>) (substitution P_1 -> Int))]
              (tuple_expr type='(factory: (Int) -> A)' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:23 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:23 - line:17:39] names=factory
                (constructor_ref_call_expr type='(Int) -> A' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:35 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:33 - line:17:35] nothrow
                  (declref_expr type='(A.Type) -> (Int) -> A' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:35 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:35 - line:17:35] decl=Test.(file).A.init(number:)@/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:12:8 function_ref=unapplied)
                  (type_expr type='A.Type' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:33 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:33 - line:17:33] typerepr='A'))))))))
    (constructor_decl implicit range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:15:8 - line:15:8] "init()" interface type='(MyOtherWorld.Type) -> () -> MyOtherWorld' access=internal designated
      (parameter "self" interface type='MyOtherWorld' inout)
      (parameter_list)
      (brace_stmt implicit
        (return_stmt implicit))))
  (struct_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:21:1 - line:28:1] "AModule" interface type='AModule.Type' access=internal non-resilient inherits: Module
    (func_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:22:5 - line:23:5] "configure(binder:)" interface type='(AModule.Type) -> (Binder<Unscoped>) -> ()' access=internal type
      (parameter "self" interface type='AModule.Type')
      (parameter_list
        (parameter "binder" apiName=binder interface type='Binder<Unscoped>') range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:22:26 - line:22:51])
      (brace_stmt range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:22:53 - line:23:5]))
    (func_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:25:5 - line:27:5] "thisWorld(bbbb:)" interface type='(AModule.Type) -> (ReceiptBinder<Int>) -> BindingReceipt<Int>' access=internal type
      (parameter "self" interface type='AModule.Type')
      (parameter_list
        (parameter "bbbb" apiName=bbbb interface type='ReceiptBinder<Int>') range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:25:26 - line:25:51])
      (result
        (type_ident
          (component id='BindingReceipt' bind=Cleanse.(file).BindingReceipt)
            (type_ident
              (component id='Int' bind=Swift.(file).Int))))
      (call_expr type='BindingReceipt<Int>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:26:14 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:26:9 - line:26:25] nothrow arg_labels=value:
        (dot_syntax_call_expr type='(Int, StaticString, Int, StaticString) -> BindingReceipt<Int>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:26:14 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:26:9 - line:26:14] nothrow
          (declref_expr type='(ReceiptBinder<Int>) -> (Int, StaticString, Int, StaticString) -> BindingReceipt<Int>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:26:14 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:26:14 - line:26:14] decl=Cleanse.(file).BindToable extension.to(value:file:line:function:) [with (substitution_map generic_signature=<Self where Self : BindToable> (substitution Self -> ReceiptBinder<Int>))] function_ref=single)
          (declref_expr type='ReceiptBinder<Int>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:26:9 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:26:9 - line:26:9] decl=Test.(file).AModule.thisWorld(bbbb:).bbbb@/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:25:27 function_ref=unapplied))
        (argument_shuffle_expr implicit type='(value: Int, file: StaticString, line: Int, function: StaticString)' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:26:16 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:26:16 - line:26:25] tuple_to_tuple elements=[0, -3, -3, -3] variadic_sources=[] default_args_owner=Cleanse.(file).BindToable extension.to(value:file:line:function:) [with (substitution_map generic_signature=<Self where Self : BindToable> (substitution Self -> ReceiptBinder<Int>))]
          (tuple_expr type='(value: Int)' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:26:16 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:26:16 - line:26:25] names=value
            (integer_literal_expr type='Int' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:26:24 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:26:24 - line:26:24] value=4 builtin_initializer=Swift.(file).Int.init(_builtinIntegerLiteral:) initializer=**NULL**)))))
    (constructor_decl implicit range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:21:8 - line:21:8] "init()" interface type='(AModule.Type) -> () -> AModule' access=internal designated
      (parameter "self" interface type='AModule' inout)
      (parameter_list)
      (brace_stmt implicit
        (return_stmt implicit)))
    (typealias implicit "Scope" interface type='AModule.Scope.Type' access=internal type='Unscoped')))
"""
    
    /**
     ````
     struct A {
         let number: Int
     }
     struct MyOtherWorld {
         static func configureMyA(aaaa: ReceiptBinder<A>) -> BindingReceipt<A> {
             return aaaa.to(factory: A.init)
         }
     }

     struct AModule: Module {
         static func configure(binder: Binder<Unscoped>) {
             binder.bind(A.self).configured(with: MyOtherWorld.configureMyA)
         }
     }
     ````
     */
    static let danglingAndReferenceProvidersFixture = """
(source_file "/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift"
  (import_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:9:1 - line:9:8] 'Foundation')
  (import_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:10:1 - line:10:8] 'Cleanse')
  (struct_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:12:1 - line:14:1] "A" interface type='A.Type' access=internal non-resilient
    (pattern_binding_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:13:5 - line:13:17]
      (pattern_typed type='Int'
        (pattern_named type='Int' 'number')
        (type_ident
          (component id='Int' bind=Swift.(file).Int))))
    (var_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:13:9 - line:13:9] "number" type='Int' interface type='Int' access=internal let readImpl=stored immutable
      (accessor_decl implicit range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:13:9 - line:13:9] 'anonname=0x7f9bd205ce68' interface type='(A) -> () -> Int' access=internal get_for=number
        (parameter "self" interface type='A')
        (parameter_list)
        (brace_stmt implicit range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:13:9 - line:13:9]
          (return_stmt implicit
            (member_ref_expr implicit type='Int' decl=Test.(file).A.number@/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:13:9 direct_to_storage
              (declref_expr implicit type='A' decl=Test.(file).A.<anonymous>.self@/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:13:9 function_ref=unapplied))))))
    (accessor_decl implicit range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:13:9 - line:13:9] 'anonname=0x7f9bd205ce68' interface type='(A) -> () -> Int' access=internal get_for=number
      (parameter "self" interface type='A')
      (parameter_list)
      (brace_stmt implicit range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:13:9 - line:13:9]
        (return_stmt implicit
          (member_ref_expr implicit type='Int' decl=Test.(file).A.number@/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:13:9 direct_to_storage
            (declref_expr implicit type='A' decl=Test.(file).A.<anonymous>.self@/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:13:9 function_ref=unapplied)))))
    (constructor_decl implicit range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:12:8 - line:12:8] "init(number:)" interface type='(A.Type) -> (Int) -> A' access=internal designated
      (parameter "self" interface type='A' inout)
      (parameter_list
        (parameter "number" apiName=number interface type='Int') range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:12:8 - line:12:8])))
  (struct_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:15:1 - line:19:1] "MyOtherWorld" interface type='MyOtherWorld.Type' access=internal non-resilient
    (func_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:16:5 - line:18:5] "configureMyA(aaaa:)" interface type='(MyOtherWorld.Type) -> (ReceiptBinder<A>) -> BindingReceipt<A>' access=internal type
      (parameter "self" interface type='MyOtherWorld.Type')
      (parameter_list
        (parameter "aaaa" apiName=aaaa interface type='ReceiptBinder<A>') range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:16:29 - line:16:52])
      (result
        (type_ident
          (component id='BindingReceipt' bind=Cleanse.(file).BindingReceipt)
            (type_ident
              (component id='A' bind=Test.(file).A@/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:12:8))))
      (brace_stmt range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:16:75 - line:18:5]
        (return_stmt range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:9 - line:17:39]
          (call_expr type='BindingReceipt<A>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:21 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:16 - line:17:39] nothrow arg_labels=factory:
            (dot_syntax_call_expr type='(StaticString, Int, StaticString, @escaping ((Int)) -> A) -> BindingReceipt<A>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:21 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:16 - line:17:21] nothrow
              (declref_expr type='(ReceiptBinder<A>) -> (StaticString, Int, StaticString, @escaping ((Int)) -> A) -> BindingReceipt<A>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:21 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:21 - line:17:21] decl=Cleanse.(file).BindToable extension.to(file:line:function:factory:) [with (substitution_map generic_signature=<Self, P_1 where Self : BindToable> (substitution Self -> ReceiptBinder<A>) (substitution P_1 -> Int))] function_ref=single)
              (declref_expr type='ReceiptBinder<A>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:16 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:16 - line:17:16] decl=Test.(file).MyOtherWorld.configureMyA(aaaa:).aaaa@/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:16:30 function_ref=unapplied))
            (argument_shuffle_expr implicit type='(file: StaticString, line: Int, function: StaticString, factory: ((Int)) -> A)' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:23 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:23 - line:17:39] tuple_to_tuple elements=[-3, -3, -3, 0] variadic_sources=[] default_args_owner=Cleanse.(file).BindToable extension.to(file:line:function:factory:) [with (substitution_map generic_signature=<Self, P_1 where Self : BindToable> (substitution Self -> ReceiptBinder<A>) (substitution P_1 -> Int))]
              (tuple_expr type='(factory: (Int) -> A)' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:23 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:23 - line:17:39] names=factory
                (constructor_ref_call_expr type='(Int) -> A' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:35 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:33 - line:17:35] nothrow
                  (declref_expr type='(A.Type) -> (Int) -> A' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:35 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:35 - line:17:35] decl=Test.(file).A.init(number:)@/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:12:8 function_ref=unapplied)
                  (type_expr type='A.Type' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:33 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:33 - line:17:33] typerepr='A'))))))))
    (constructor_decl implicit range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:15:8 - line:15:8] "init()" interface type='(MyOtherWorld.Type) -> () -> MyOtherWorld' access=internal designated
      (parameter "self" interface type='MyOtherWorld' inout)
      (parameter_list)
      (brace_stmt implicit
        (return_stmt implicit))))
  (struct_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:21:1 - line:25:1] "AModule" interface type='AModule.Type' access=internal non-resilient inherits: Module
    (func_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:22:5 - line:24:5] "configure(binder:)" interface type='(AModule.Type) -> (Binder<Unscoped>) -> ()' access=internal type
      (parameter "self" interface type='AModule.Type')
      (parameter_list
        (parameter "binder" apiName=binder interface type='Binder<Unscoped>') range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:22:26 - line:22:51])
      (call_expr type='BindingReceipt<A>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:29 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:9 - line:23:71] nothrow arg_labels=with:
        (dot_syntax_call_expr type='((ReceiptBinder<A>) -> BindingReceipt<A>) -> BindingReceipt<A>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:29 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:9 - line:23:29] nothrow
          (declref_expr type='(BaseBindingBuilder<A, Binder<Unscoped>>) -> ((ReceiptBinder<A>) -> BindingReceipt<A>) -> BindingReceipt<A>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:29 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:29 - line:23:29] decl=Cleanse.(file).BindToable extension.configured(with:) [with (substitution_map generic_signature=<Self where Self : BindToable> (substitution Self -> BaseBindingBuilder<A, Binder<Unscoped>>))] function_ref=single)
          (call_expr type='BaseBindingBuilder<A, Binder<Unscoped>>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:16 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:9 - line:23:27] nothrow arg_labels=_:
            (dot_syntax_call_expr type='(A.Type) -> BaseBindingBuilder<A, Binder<Unscoped>>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:16 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:9 - line:23:16] nothrow
              (declref_expr type='(Binder<Unscoped>) -> (A.Type) -> BaseBindingBuilder<A, Binder<Unscoped>>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:16 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:16 - line:23:16] decl=Cleanse.(file).BinderBase extension.bind [with (substitution_map generic_signature=<Self, Element where Self : BinderBase> (substitution Self -> Binder<Unscoped>) (substitution Element -> A))] function_ref=single)
              (declref_expr type='Binder<Unscoped>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:9 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:9 - line:23:9] decl=Test.(file).AModule.configure(binder:).binder@/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:22:27 function_ref=unapplied))
            (paren_expr type='(A.Type)' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:21 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:20 - line:23:27]
              (dot_self_expr type='A.Type' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:21 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:21 - line:23:23]
                (type_expr type='A.Type' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:21 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:21 - line:23:21] typerepr='A')))))
        (tuple_expr type='(with: (ReceiptBinder<A>) -> BindingReceipt<A>)' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:39 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:39 - line:23:71] names=with
          (function_conversion_expr implicit type='(ReceiptBinder<A>) -> BindingReceipt<A>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:59 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:46 - line:23:59]
            (dot_syntax_call_expr type='(ReceiptBinder<A>) -> BindingReceipt<A>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:59 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:46 - line:23:59] nothrow
              (declref_expr type='(MyOtherWorld.Type) -> (ReceiptBinder<A>) -> BindingReceipt<A>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:59 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:59 - line:23:59] decl=Test.(file).MyOtherWorld.configureMyA(aaaa:)@/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:16:17 function_ref=unapplied)
              (type_expr type='MyOtherWorld.Type' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:46 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:23:46 - line:23:46] typerepr='MyOtherWorld'))))))
    (constructor_decl implicit range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:21:8 - line:21:8] "init()" interface type='(AModule.Type) -> () -> AModule' access=internal designated
      (parameter "self" interface type='AModule' inout)
      (parameter_list)
      (brace_stmt implicit
        (return_stmt implicit)))
    (typealias implicit "Scope" interface type='AModule.Scope.Type' access=internal type='Unscoped')))
"""
    
    /**
     ````
     class A {
     }

     struct AModule: Module {
         static func configure(binder: Binder<Unscoped>) {
             binder
                 .bindPropertyInjectionOf(A.self)
                 .to { (a: A, number: Int) in
             }
         }
     }
     ````
     */
    static let propertyInjectionBindingFixture = """
(source_file "/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift"
  (import_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:9:1 - line:9:8] 'Foundation')
  (import_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:10:1 - line:10:8] 'Cleanse')
  (class_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:12:1 - line:13:1] "A" interface type='A.Type' access=internal non-resilient
    (constructor_decl implicit range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:12:7 - line:12:7] "init()" interface type='(A.Type) -> () -> A' access=internal designated
      (parameter "self" interface type='A')
      (parameter_list)
      (brace_stmt implicit
        (return_stmt implicit)))
    (destructor_decl implicit range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:12:7 - line:12:7] "deinit" interface type='(A) -> () -> ()' access=internal @objc
      (parameter "self" interface type='A')
      (parameter_list)
      (brace_stmt implicit range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:12:7 - line:12:7])))
  (struct_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:15:1 - line:22:1] "AModule" interface type='AModule.Type' access=internal non-resilient inherits: Module
    (func_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:16:5 - line:21:5] "configure(binder:)" interface type='(AModule.Type) -> (Binder<Unscoped>) -> ()' access=internal type
      (parameter "self" interface type='AModule.Type')
      (parameter_list
        (parameter "binder" apiName=binder interface type='Binder<Unscoped>') range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:16:26 - line:16:51])
      (call_expr type='BindingReceipt<PropertyInjector<A>>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:19:14 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:9 - line:20:9] nothrow arg_labels=_:
        (dot_syntax_call_expr type='(StaticString, Int, StaticString, @escaping (A, Int) -> Void) -> BindingReceipt<PropertyInjector<A>>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:19:14 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:9 - line:19:14] nothrow
          (declref_expr type='(PropertyInjectorBindingBuilder<Binder<Unscoped>, A>) -> (StaticString, Int, StaticString, @escaping (A, Int) -> Void) -> BindingReceipt<PropertyInjector<A>>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:19:14 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:19:14 - line:19:14] decl=Cleanse.(file).PropertyInjectorBindingBuilderProtocol extension.to(file:line:function:injector:) [with (substitution_map generic_signature=<Self, P_1 where Self : PropertyInjectorBindingBuilderProtocol> (substitution Self -> PropertyInjectorBindingBuilder<Binder<Unscoped>, A>) (substitution P_1 -> Int))] function_ref=single)
          (call_expr type='PropertyInjectorBindingBuilder<Binder<Unscoped>, A>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:18:14 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:9 - line:18:44] nothrow arg_labels=_:
            (dot_syntax_call_expr type='(A.Type) -> PropertyInjectorBindingBuilder<Binder<Unscoped>, A>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:18:14 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:9 - line:18:14] nothrow
              (declref_expr type='(Binder<Unscoped>) -> (A.Type) -> PropertyInjectorBindingBuilder<Binder<Unscoped>, A>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:18:14 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:18:14 - line:18:14] decl=Cleanse.(file).BinderBase extension.bindPropertyInjectionOf [with (substitution_map generic_signature=<Self, Element where Self : BinderBase, Element : AnyObject> (substitution Self -> Binder<Unscoped>) (substitution Element -> A))] function_ref=single)
              (declref_expr type='Binder<Unscoped>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:9 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:17:9 - line:17:9] decl=Test.(file).AModule.configure(binder:).binder@/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:16:27 function_ref=unapplied))
            (paren_expr type='(A.Type)' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:18:38 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:18:37 - line:18:44]
              (dot_self_expr type='A.Type' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:18:38 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:18:38 - line:18:40]
                (type_expr type='A.Type' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:18:38 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:18:38 - line:18:38] typerepr='A')))))
        (argument_shuffle_expr implicit type='(file: StaticString, line: Int, function: StaticString, injector: (A, Int) -> Void)' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:19:17 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:19:17 - line:20:9] scalar_to_tuple elements=[-3, -3, -3, 0] variadic_sources=[] default_args_owner=Cleanse.(file).PropertyInjectorBindingBuilderProtocol extension.to(file:line:function:injector:) [with (substitution_map generic_signature=<Self, P_1 where Self : PropertyInjectorBindingBuilderProtocol> (substitution Self -> PropertyInjectorBindingBuilder<Binder<Unscoped>, A>) (substitution P_1 -> Int))]
          (paren_expr type='((A, Int) -> Void)' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:19:17 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:19:17 - line:20:9] trailing-closure
            (closure_expr type='(A, Int) -> ()' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:19:17 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:19:17 - line:20:9] discriminator=0 escaping
              (parameter_list
                (parameter "a" type='A' interface type='A')
                (parameter "number" type='Int' interface type='Int') range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:19:19 - line:19:37])
              (brace_stmt range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:19:17 - line:20:9]))))))
    (constructor_decl implicit range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:15:8 - line:15:8] "init()" interface type='(AModule.Type) -> () -> AModule' access=internal designated
      (parameter "self" interface type='AModule' inout)
      (parameter_list)
      (brace_stmt implicit
        (return_stmt implicit)))
    (typealias implicit "Scope" interface type='AModule.Scope.Type' access=internal type='Unscoped')))
"""
    /**
     ````
     class A {
         static func configureAppDelegateInjector(binder bind: PropertyInjectionReceiptBinder<A>) -> BindingReceipt<PropertyInjector<A>> {
             return bind.to { (a, number:Int) in
                 // Noop
             }
         }
     }

     struct Component: RootComponent {
         static func configureRoot(binder bind: ReceiptBinder<PropertyInjector<A>>) -> BindingReceipt<PropertyInjector<A>> {
             return bind.propertyInjector(configuredWith: A.configureAppDelegateInjector)
         }
         
         typealias Root = PropertyInjector<A>
         
         static func configure(binder: Binder<Unscoped>) {
         }
     }
     ````
     */
    static var rootPropertyInjectorProvider = """

(source_file "/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift"
  (import_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:9:1 - line:9:8] 'Foundation')
  (import_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:10:1 - line:10:8] 'Cleanse')
  (class_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:12:1 - line:18:1] "A" interface type='A.Type' access=internal non-resilient
    (func_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:13:5 - line:17:5] "configureAppDelegateInjector(binder:)" interface type='(A.Type) -> (PropertyInjectionReceiptBinder<A>) -> BindingReceipt<PropertyInjector<A>>' access=internal final type
      (parameter "self" interface type='A.Type')
      (parameter_list
        (parameter "bind" apiName=binder interface type='PropertyInjectionReceiptBinder<A>') range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:13:45 - line:13:92])
      (result
        (type_ident
          (component id='BindingReceipt' bind=Cleanse.(file).BindingReceipt)
            (type_ident
              (component id='PropertyInjector' bind=Cleanse.(file).PropertyInjector)
                (type_ident
                  (component id='A' bind=Test.(file).A@/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:12:7)))))
      (brace_stmt range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:13:133 - line:17:5]
        (return_stmt range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:14:9 - line:16:9]
          (call_expr type='BindingReceipt<PropertyInjector<A>>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:14:21 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:14:16 - line:16:9] nothrow arg_labels=_:
            (dot_syntax_call_expr type='(StaticString, Int, StaticString, @escaping (A, Int) -> Void) -> BindingReceipt<PropertyInjector<A>>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:14:21 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:14:16 - line:14:21] nothrow
              (declref_expr type='(PropertyInjectionReceiptBinder<A>) -> (StaticString, Int, StaticString, @escaping (A, Int) -> Void) -> BindingReceipt<PropertyInjector<A>>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:14:21 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:14:21 - line:14:21] decl=Cleanse.(file).PropertyInjectorBindingBuilderProtocol extension.to(file:line:function:injector:) [with (substitution_map generic_signature=<Self, P_1 where Self : PropertyInjectorBindingBuilderProtocol> (substitution Self -> PropertyInjectionReceiptBinder<A>) (substitution P_1 -> Int))] function_ref=single)
              (declref_expr type='PropertyInjectionReceiptBinder<A>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:14:16 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:14:16 - line:14:16] decl=Test.(file).A.configureAppDelegateInjector(binder:).bind@/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:13:53 function_ref=unapplied))
            (argument_shuffle_expr implicit type='(file: StaticString, line: Int, function: StaticString, injector: (A, Int) -> Void)' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:14:24 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:14:24 - line:16:9] scalar_to_tuple elements=[-3, -3, -3, 0] variadic_sources=[] default_args_owner=Cleanse.(file).PropertyInjectorBindingBuilderProtocol extension.to(file:line:function:injector:) [with (substitution_map generic_signature=<Self, P_1 where Self : PropertyInjectorBindingBuilderProtocol> (substitution Self -> PropertyInjectionReceiptBinder<A>) (substitution P_1 -> Int))]
              (paren_expr type='((A, Int) -> Void)' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:14:24 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:14:24 - line:16:9] trailing-closure
                (closure_expr type='(A, Int) -> ()' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:14:24 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:14:24 - line:16:9] discriminator=0 escaping
                  (parameter_list
                    (parameter "a" type='A' interface type='A')
                    (parameter "number" type='Int' interface type='Int') range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:14:26 - line:14:40])
                  (brace_stmt range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:14:24 - line:16:9]))))))))
    (constructor_decl implicit range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:12:7 - line:12:7] "init()" interface type='(A.Type) -> () -> A' access=internal designated
      (parameter "self" interface type='A')
      (parameter_list)
      (brace_stmt implicit
        (return_stmt implicit)))
    (destructor_decl implicit range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:12:7 - line:12:7] "deinit" interface type='(A) -> () -> ()' access=internal @objc
      (parameter "self" interface type='A')
      (parameter_list)
      (brace_stmt implicit range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:12:7 - line:12:7])))
  (struct_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:20:1 - line:29:1] "Component" interface type='Component.Type' access=internal non-resilient inherits: RootComponent
    (func_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:21:5 - line:23:5] "configureRoot(binder:)" interface type='(Component.Type) -> (ReceiptBinder<PropertyInjector<A>>) -> BindingReceipt<PropertyInjector<A>>' access=internal type
      (parameter "self" interface type='Component.Type')
      (parameter_list
        (parameter "bind" apiName=binder interface type='ReceiptBinder<PropertyInjector<A>>') range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:21:30 - line:21:78])
      (result
        (type_ident
          (component id='BindingReceipt' bind=Cleanse.(file).BindingReceipt)
            (type_ident
              (component id='PropertyInjector' bind=Cleanse.(file).PropertyInjector)
                (type_ident
                  (component id='A' bind=Test.(file).A@/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:12:7)))))
      (brace_stmt range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:21:119 - line:23:5]
        (return_stmt range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:22:9 - line:22:84]
          (call_expr type='BindingReceipt<PropertyInjector<A>>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:22:21 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:22:16 - line:22:84] nothrow arg_labels=configuredWith:
            (dot_syntax_call_expr type='((PropertyInjectionReceiptBinder<A>) -> BindingReceipt<PropertyInjector<A>>) -> BindingReceipt<PropertyInjector<A>>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:22:21 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:22:16 - line:22:21] nothrow
              (declref_expr type='(ReceiptBinder<PropertyInjector<A>>) -> ((PropertyInjectionReceiptBinder<A>) -> BindingReceipt<PropertyInjector<A>>) -> BindingReceipt<PropertyInjector<A>>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:22:21 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:22:21 - line:22:21] decl=Cleanse.(file).BindToable extension.propertyInjector(configuredWith:) [with (substitution_map generic_signature=<Self where Self : BindToable, Self.Input : PropertyInjectorProtocol> (substitution Self -> ReceiptBinder<PropertyInjector<A>>))] function_ref=single)
              (declref_expr type='ReceiptBinder<PropertyInjector<A>>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:22:16 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:22:16 - line:22:16] decl=Test.(file).Component.configureRoot(binder:).bind@/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:21:38 function_ref=unapplied))
            (tuple_expr type='(configuredWith: (PropertyInjectionReceiptBinder<A>) -> BindingReceipt<PropertyInjector<A>>)' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:22:37 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:22:37 - line:22:84] names=configuredWith
              (function_conversion_expr implicit type='(PropertyInjectionReceiptBinder<A>) -> BindingReceipt<PropertyInjector<A>>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:22:56 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:22:54 - line:22:56]
                (dot_syntax_call_expr type='(PropertyInjectionReceiptBinder<A>) -> BindingReceipt<PropertyInjector<A>>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:22:56 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:22:54 - line:22:56] nothrow
                  (declref_expr type='(A.Type) -> (PropertyInjectionReceiptBinder<A>) -> BindingReceipt<PropertyInjector<A>>' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:22:56 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:22:56 - line:22:56] decl=Test.(file).A.configureAppDelegateInjector(binder:)@/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:13:17 function_ref=unapplied)
                  (type_expr type='A.Type' location=/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:22:54 range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:22:54 - line:22:54] typerepr='A'))))))))
    (typealias range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:25:5 - line:25:40] "Root" interface type='Component.Root.Type' access=internal type='PropertyInjector<A>')
    (func_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:27:5 - line:28:5] "configure(binder:)" interface type='(Component.Type) -> (Binder<Unscoped>) -> ()' access=internal type
      (parameter "self" interface type='Component.Type')
      (parameter_list
        (parameter "binder" apiName=binder interface type='Binder<Unscoped>') range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:27:26 - line:27:51])
      (brace_stmt range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:27:53 - line:28:5]))
    (constructor_decl implicit range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:20:8 - line:20:8] "init()" interface type='(Component.Type) -> () -> Component' access=internal designated
      (parameter "self" interface type='Component' inout)
      (parameter_list)
      (brace_stmt implicit
        (return_stmt implicit)))
    (typealias implicit "Seed" interface type='Component.Seed.Type' access=internal type='Void')
    (typealias implicit "Scope" interface type='Component.Scope.Type' access=internal type='Unscoped')))
"""
}