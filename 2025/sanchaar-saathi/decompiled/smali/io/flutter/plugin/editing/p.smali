.class public Lio/flutter/plugin/editing/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugin/editing/i$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/editing/p$c;,
        Lio/flutter/plugin/editing/p$d;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroid/view/inputmethod/InputMethodManager;

.field public final c:Landroid/view/autofill/AutofillManager;

.field public final d:LX2/t;

.field public final e:LX2/x;

.field public f:Lio/flutter/plugin/editing/p$c;

.field public g:LX2/x$b;

.field public h:Landroid/util/SparseArray;

.field public i:Lio/flutter/plugin/editing/i;

.field public j:Z

.field public k:Landroid/view/inputmethod/InputConnection;

.field public l:Lio/flutter/plugin/platform/t;

.field public m:Landroid/graphics/Rect;

.field public n:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

.field public o:LX2/x$e;

.field public p:Z


# direct methods
.method public constructor <init>(Landroid/view/View;LX2/x;LX2/t;Lio/flutter/plugin/platform/t;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/flutter/plugin/editing/p$c;

    sget-object v1, Lio/flutter/plugin/editing/p$c$a;->e:Lio/flutter/plugin/editing/p$c$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/flutter/plugin/editing/p$c;-><init>(Lio/flutter/plugin/editing/p$c$a;I)V

    iput-object v0, p0, Lio/flutter/plugin/editing/p;->f:Lio/flutter/plugin/editing/p$c;

    iput-object p1, p0, Lio/flutter/plugin/editing/p;->a:Landroid/view/View;

    new-instance v0, Lio/flutter/plugin/editing/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lio/flutter/plugin/editing/i;-><init>(LX2/x$e;Landroid/view/View;)V

    iput-object v0, p0, Lio/flutter/plugin/editing/p;->i:Lio/flutter/plugin/editing/i;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lio/flutter/plugin/editing/p;->b:Landroid/view/inputmethod/InputMethodManager;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillManager;

    iput-object v1, p0, Lio/flutter/plugin/editing/p;->c:Landroid/view/autofill/AutofillManager;

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-direct {v0, p1}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lio/flutter/plugin/editing/p;->n:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->install()V

    :cond_0
    iput-object p2, p0, Lio/flutter/plugin/editing/p;->e:LX2/x;

    new-instance p1, Lio/flutter/plugin/editing/p$a;

    invoke-direct {p1, p0}, Lio/flutter/plugin/editing/p$a;-><init>(Lio/flutter/plugin/editing/p;)V

    invoke-virtual {p2, p1}, LX2/x;->n(LX2/x$f;)V

    invoke-virtual {p2}, LX2/x;->k()V

    iput-object p3, p0, Lio/flutter/plugin/editing/p;->d:LX2/t;

    iput-object p4, p0, Lio/flutter/plugin/editing/p;->l:Lio/flutter/plugin/platform/t;

    invoke-virtual {p4, p0}, Lio/flutter/plugin/platform/t;->D(Lio/flutter/plugin/editing/p;)V

    return-void
.end method

.method public static synthetic b(Lio/flutter/plugin/editing/p;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/editing/p;->a:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic c(Lio/flutter/plugin/editing/p;)Lio/flutter/plugin/editing/p$c;
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/editing/p;->f:Lio/flutter/plugin/editing/p$c;

    return-object p0
.end method

.method public static synthetic d(Lio/flutter/plugin/editing/p;)V
    .locals 0

    invoke-virtual {p0}, Lio/flutter/plugin/editing/p;->x()V

    return-void
.end method

.method public static synthetic e(Lio/flutter/plugin/editing/p;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lio/flutter/plugin/editing/p;->r(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lio/flutter/plugin/editing/p;)V
    .locals 0

    invoke-virtual {p0}, Lio/flutter/plugin/editing/p;->w()V

    return-void
.end method

.method public static synthetic g(Lio/flutter/plugin/editing/p;)Landroid/view/autofill/AutofillManager;
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/editing/p;->c:Landroid/view/autofill/AutofillManager;

    return-object p0
.end method

.method public static synthetic h(Lio/flutter/plugin/editing/p;IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/flutter/plugin/editing/p;->B(IZ)V

    return-void
.end method

.method public static synthetic i(Lio/flutter/plugin/editing/p;DD[D)V
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lio/flutter/plugin/editing/p;->z(DD[D)V

    return-void
.end method

.method public static m(LX2/x$e;LX2/x$e;)Z
    .locals 7

    iget v0, p0, LX2/x$e;->e:I

    iget v1, p0, LX2/x$e;->d:I

    sub-int/2addr v0, v1

    iget v1, p1, LX2/x$e;->e:I

    iget v2, p1, LX2/x$e;->d:I

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v4, p0, LX2/x$e;->a:Ljava/lang/String;

    iget v5, p0, LX2/x$e;->d:I

    add-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p1, LX2/x$e;->a:Ljava/lang/String;

    iget v6, p1, LX2/x$e;->d:I

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static s(LX2/x$c;ZZZZLX2/x$d;)I
    .locals 1

    iget-object p4, p0, LX2/x$c;->a:LX2/x$g;

    sget-object v0, LX2/x$g;->g:LX2/x$g;

    if-ne p4, v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    sget-object v0, LX2/x$g;->j:LX2/x$g;

    if-ne p4, v0, :cond_3

    iget-boolean p1, p0, LX2/x$c;->b:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x1002

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    iget-boolean p0, p0, LX2/x$c;->c:Z

    if-eqz p0, :cond_2

    or-int/lit16 p1, p1, 0x2000

    :cond_2
    return p1

    :cond_3
    sget-object p0, LX2/x$g;->k:LX2/x$g;

    if-ne p4, p0, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    sget-object p0, LX2/x$g;->p:LX2/x$g;

    if-ne p4, p0, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_5
    sget-object p0, LX2/x$g;->l:LX2/x$g;

    if-ne p4, p0, :cond_6

    const p0, 0x20001

    goto :goto_3

    :cond_6
    sget-object p0, LX2/x$g;->m:LX2/x$g;

    if-eq p4, p0, :cond_d

    sget-object p0, LX2/x$g;->r:LX2/x$g;

    if-ne p4, p0, :cond_7

    goto :goto_2

    :cond_7
    sget-object p0, LX2/x$g;->n:LX2/x$g;

    if-eq p4, p0, :cond_c

    sget-object p0, LX2/x$g;->q:LX2/x$g;

    if-ne p4, p0, :cond_8

    goto :goto_1

    :cond_8
    sget-object p0, LX2/x$g;->o:LX2/x$g;

    if-ne p4, p0, :cond_9

    const/16 p0, 0x91

    goto :goto_3

    :cond_9
    sget-object p0, LX2/x$g;->h:LX2/x$g;

    if-ne p4, p0, :cond_a

    const/16 p0, 0x61

    goto :goto_3

    :cond_a
    sget-object p0, LX2/x$g;->i:LX2/x$g;

    if-ne p4, p0, :cond_b

    const/16 p0, 0x71

    goto :goto_3

    :cond_b
    const/4 p0, 0x1

    goto :goto_3

    :cond_c
    :goto_1
    const/16 p0, 0x11

    goto :goto_3

    :cond_d
    :goto_2
    const/16 p0, 0x21

    :goto_3
    if-eqz p1, :cond_e

    const p1, 0x80080

    :goto_4
    or-int/2addr p0, p1

    goto :goto_5

    :cond_e
    if-eqz p2, :cond_f

    const p1, 0x8000

    or-int/2addr p0, p1

    :cond_f
    if-nez p3, :cond_10

    const p1, 0x80090

    goto :goto_4

    :cond_10
    :goto_5
    sget-object p1, LX2/x$d;->f:LX2/x$d;

    if-ne p5, p1, :cond_11

    or-int/lit16 p0, p0, 0x1000

    goto :goto_6

    :cond_11
    sget-object p1, LX2/x$d;->g:LX2/x$d;

    if-ne p5, p1, :cond_12

    or-int/lit16 p0, p0, 0x2000

    goto :goto_6

    :cond_12
    sget-object p1, LX2/x$d;->h:LX2/x$d;

    if-ne p5, p1, :cond_13

    or-int/lit16 p0, p0, 0x4000

    :cond_13
    :goto_6
    return p0
.end method


# virtual methods
.method public A(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->b:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lio/flutter/plugin/editing/p;->a:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final B(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lio/flutter/plugin/editing/p;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    new-instance p2, Lio/flutter/plugin/editing/p$c;

    sget-object v0, Lio/flutter/plugin/editing/p$c$a;->g:Lio/flutter/plugin/editing/p$c$a;

    invoke-direct {p2, v0, p1}, Lio/flutter/plugin/editing/p$c;-><init>(Lio/flutter/plugin/editing/p$c$a;I)V

    iput-object p2, p0, Lio/flutter/plugin/editing/p;->f:Lio/flutter/plugin/editing/p$c;

    iget-object p1, p0, Lio/flutter/plugin/editing/p;->b:Landroid/view/inputmethod/InputMethodManager;

    iget-object p2, p0, Lio/flutter/plugin/editing/p;->a:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/flutter/plugin/editing/p;->j:Z

    goto :goto_0

    :cond_0
    new-instance p2, Lio/flutter/plugin/editing/p$c;

    sget-object v0, Lio/flutter/plugin/editing/p$c$a;->h:Lio/flutter/plugin/editing/p$c$a;

    invoke-direct {p2, v0, p1}, Lio/flutter/plugin/editing/p$c;-><init>(Lio/flutter/plugin/editing/p$c$a;I)V

    iput-object p2, p0, Lio/flutter/plugin/editing/p;->f:Lio/flutter/plugin/editing/p$c;

    const/4 p1, 0x0

    iput-object p1, p0, Lio/flutter/plugin/editing/p;->k:Landroid/view/inputmethod/InputConnection;

    :goto_0
    return-void
.end method

.method public C(ILX2/x$b;)V
    .locals 3

    invoke-virtual {p0}, Lio/flutter/plugin/editing/p;->x()V

    iput-object p2, p0, Lio/flutter/plugin/editing/p;->g:LX2/x$b;

    new-instance v0, Lio/flutter/plugin/editing/p$c;

    sget-object v1, Lio/flutter/plugin/editing/p$c$a;->f:Lio/flutter/plugin/editing/p$c$a;

    invoke-direct {v0, v1, p1}, Lio/flutter/plugin/editing/p$c;-><init>(Lio/flutter/plugin/editing/p$c$a;I)V

    iput-object v0, p0, Lio/flutter/plugin/editing/p;->f:Lio/flutter/plugin/editing/p$c;

    iget-object p1, p0, Lio/flutter/plugin/editing/p;->i:Lio/flutter/plugin/editing/i;

    invoke-virtual {p1, p0}, Lio/flutter/plugin/editing/i;->l(Lio/flutter/plugin/editing/i$b;)V

    new-instance p1, Lio/flutter/plugin/editing/i;

    iget-object v0, p2, LX2/x$b;->j:LX2/x$b$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, LX2/x$b$a;->c:LX2/x$e;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lio/flutter/plugin/editing/p;->a:Landroid/view/View;

    invoke-direct {p1, v0, v2}, Lio/flutter/plugin/editing/i;-><init>(LX2/x$e;Landroid/view/View;)V

    iput-object p1, p0, Lio/flutter/plugin/editing/p;->i:Lio/flutter/plugin/editing/i;

    invoke-virtual {p0, p2}, Lio/flutter/plugin/editing/p;->G(LX2/x$b;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/flutter/plugin/editing/p;->j:Z

    invoke-virtual {p0}, Lio/flutter/plugin/editing/p;->F()V

    iput-object v1, p0, Lio/flutter/plugin/editing/p;->m:Landroid/graphics/Rect;

    iget-object p1, p0, Lio/flutter/plugin/editing/p;->i:Lio/flutter/plugin/editing/i;

    invoke-virtual {p1, p0}, Lio/flutter/plugin/editing/i;->a(Lio/flutter/plugin/editing/i$b;)V

    return-void
.end method

.method public D(Landroid/view/View;LX2/x$e;)V
    .locals 2

    iget-boolean v0, p0, Lio/flutter/plugin/editing/p;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->o:LX2/x$e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LX2/x$e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->o:LX2/x$e;

    invoke-static {v0, p2}, Lio/flutter/plugin/editing/p;->m(LX2/x$e;LX2/x$e;)Z

    move-result v0

    iput-boolean v0, p0, Lio/flutter/plugin/editing/p;->j:Z

    if-eqz v0, :cond_0

    const-string v0, "TextInputPlugin"

    const-string v1, "Composing region changed by the framework. Restarting the input method."

    invoke-static {v0, v1}, LM2/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p2, p0, Lio/flutter/plugin/editing/p;->o:LX2/x$e;

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->i:Lio/flutter/plugin/editing/i;

    invoke-virtual {v0, p2}, Lio/flutter/plugin/editing/i;->n(LX2/x$e;)V

    iget-boolean p2, p0, Lio/flutter/plugin/editing/p;->j:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lio/flutter/plugin/editing/p;->b:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p2, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/flutter/plugin/editing/p;->j:Z

    :cond_1
    return-void
.end method

.method public E(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->g:LX2/x$b;

    if-eqz v0, :cond_1

    iget-object v0, v0, LX2/x$b;->g:LX2/x$c;

    if-eqz v0, :cond_1

    iget-object v0, v0, LX2/x$c;->a:LX2/x$g;

    sget-object v1, LX2/x$g;->p:LX2/x$g;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lio/flutter/plugin/editing/p;->r(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->b:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :goto_1
    return-void
.end method

.method public F()V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->f:Lio/flutter/plugin/editing/p$c;

    iget-object v0, v0, Lio/flutter/plugin/editing/p$c;->a:Lio/flutter/plugin/editing/p$c$a;

    sget-object v1, Lio/flutter/plugin/editing/p$c$a;->g:Lio/flutter/plugin/editing/p$c$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/plugin/editing/p;->p:Z

    :cond_0
    return-void
.end method

.method public final G(LX2/x$b;)V
    .locals 6

    if-eqz p1, :cond_4

    iget-object v0, p1, LX2/x$b;->j:LX2/x$b$a;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p1, LX2/x$b;->l:[LX2/x$b;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lio/flutter/plugin/editing/p;->h:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    iget-object v0, p1, LX2/x$b;->j:LX2/x$b$a;

    iget-object v0, v0, LX2/x$b$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    array-length p1, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    aget-object v2, v0, v1

    iget-object v3, v2, LX2/x$b;->j:LX2/x$b$a;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lio/flutter/plugin/editing/p;->h:Landroid/util/SparseArray;

    iget-object v5, v3, LX2/x$b$a;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lio/flutter/plugin/editing/p;->c:Landroid/view/autofill/AutofillManager;

    iget-object v4, p0, Lio/flutter/plugin/editing/p;->a:Landroid/view/View;

    iget-object v5, v3, LX2/x$b$a;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    iget-object v3, v3, LX2/x$b$a;->c:LX2/x$e;

    iget-object v3, v3, LX2/x$e;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    const/4 p1, 0x0

    iput-object p1, p0, Lio/flutter/plugin/editing/p;->h:Landroid/util/SparseArray;

    return-void
.end method

.method public a(ZZZ)V
    .locals 8

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/flutter/plugin/editing/p;->i:Lio/flutter/plugin/editing/i;

    invoke-virtual {p1}, Lio/flutter/plugin/editing/i;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/flutter/plugin/editing/p;->v(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lio/flutter/plugin/editing/p;->i:Lio/flutter/plugin/editing/i;

    invoke-virtual {p1}, Lio/flutter/plugin/editing/i;->i()I

    move-result p1

    iget-object p2, p0, Lio/flutter/plugin/editing/p;->i:Lio/flutter/plugin/editing/i;

    invoke-virtual {p2}, Lio/flutter/plugin/editing/i;->h()I

    move-result p2

    iget-object p3, p0, Lio/flutter/plugin/editing/p;->i:Lio/flutter/plugin/editing/i;

    invoke-virtual {p3}, Lio/flutter/plugin/editing/i;->g()I

    move-result p3

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->i:Lio/flutter/plugin/editing/i;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/i;->f()I

    move-result v7

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->i:Lio/flutter/plugin/editing/i;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/i;->e()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/plugin/editing/p;->o:LX2/x$e;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lio/flutter/plugin/editing/p;->i:Lio/flutter/plugin/editing/i;

    invoke-virtual {v1}, Lio/flutter/plugin/editing/i;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/flutter/plugin/editing/p;->o:LX2/x$e;

    iget-object v2, v2, LX2/x$e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/flutter/plugin/editing/p;->o:LX2/x$e;

    iget v2, v1, LX2/x$e;->b:I

    if-ne p1, v2, :cond_1

    iget v2, v1, LX2/x$e;->c:I

    if-ne p2, v2, :cond_1

    iget v2, v1, LX2/x$e;->d:I

    if-ne p3, v2, :cond_1

    iget v1, v1, LX2/x$e;->e:I

    if-ne v7, v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send EditingState to flutter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/flutter/plugin/editing/p;->i:Lio/flutter/plugin/editing/i;

    invoke-virtual {v2}, Lio/flutter/plugin/editing/i;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TextInputPlugin"

    invoke-static {v2, v1}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lio/flutter/plugin/editing/p;->g:LX2/x$b;

    iget-boolean v1, v1, LX2/x$b;->e:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/flutter/plugin/editing/p;->e:LX2/x;

    iget-object v2, p0, Lio/flutter/plugin/editing/p;->f:Lio/flutter/plugin/editing/p$c;

    iget v2, v2, Lio/flutter/plugin/editing/p$c;->b:I

    invoke-virtual {v1, v2, v0}, LX2/x;->q(ILjava/util/ArrayList;)V

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->i:Lio/flutter/plugin/editing/i;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/i;->c()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/flutter/plugin/editing/p;->e:LX2/x;

    iget-object v1, p0, Lio/flutter/plugin/editing/p;->f:Lio/flutter/plugin/editing/p$c;

    iget v1, v1, Lio/flutter/plugin/editing/p$c;->b:I

    iget-object v2, p0, Lio/flutter/plugin/editing/p;->i:Lio/flutter/plugin/editing/i;

    invoke-virtual {v2}, Lio/flutter/plugin/editing/i;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, v7

    invoke-virtual/range {v0 .. v6}, LX2/x;->p(ILjava/lang/String;IIII)V

    :goto_0
    new-instance v6, LX2/x$e;

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->i:Lio/flutter/plugin/editing/i;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/i;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, v7

    invoke-direct/range {v0 .. v5}, LX2/x$e;-><init>(Ljava/lang/String;IIII)V

    iput-object v6, p0, Lio/flutter/plugin/editing/p;->o:LX2/x$e;

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p1, p0, Lio/flutter/plugin/editing/p;->i:Lio/flutter/plugin/editing/i;

    invoke-virtual {p1}, Lio/flutter/plugin/editing/i;->c()V

    :goto_2
    return-void
.end method

.method public j(Landroid/util/SparseArray;)V
    .locals 11

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->g:LX2/x$b;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lio/flutter/plugin/editing/p;->h:Landroid/util/SparseArray;

    if-eqz v1, :cond_5

    iget-object v0, v0, LX2/x$b;->j:LX2/x$b$a;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lio/flutter/plugin/editing/p;->h:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LX2/x$b;

    if-eqz v3, :cond_3

    iget-object v3, v3, LX2/x$b;->j:LX2/x$b$a;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillValue;

    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v4, LX2/x$e;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, -0x1

    const/4 v10, -0x1

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, LX2/x$e;-><init>(Ljava/lang/String;IIII)V

    iget-object v5, v3, LX2/x$b$a;->a:Ljava/lang/String;

    iget-object v6, v0, LX2/x$b$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v3, p0, Lio/flutter/plugin/editing/p;->i:Lio/flutter/plugin/editing/i;

    invoke-virtual {v3, v4}, Lio/flutter/plugin/editing/i;->n(LX2/x$e;)V

    goto :goto_1

    :cond_2
    iget-object v3, v3, LX2/x$b$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lio/flutter/plugin/editing/p;->e:LX2/x;

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->f:Lio/flutter/plugin/editing/p$c;

    iget v0, v0, Lio/flutter/plugin/editing/p$c;->b:I

    invoke-virtual {p1, v0, v1}, LX2/x;->r(ILjava/util/HashMap;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public k(I)V
    .locals 3

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->f:Lio/flutter/plugin/editing/p$c;

    iget-object v1, v0, Lio/flutter/plugin/editing/p$c;->a:Lio/flutter/plugin/editing/p$c$a;

    sget-object v2, Lio/flutter/plugin/editing/p$c$a;->g:Lio/flutter/plugin/editing/p$c$a;

    if-eq v1, v2, :cond_0

    sget-object v2, Lio/flutter/plugin/editing/p$c$a;->h:Lio/flutter/plugin/editing/p$c$a;

    if-ne v1, v2, :cond_1

    :cond_0
    iget v0, v0, Lio/flutter/plugin/editing/p$c;->b:I

    if-ne v0, p1, :cond_1

    new-instance p1, Lio/flutter/plugin/editing/p$c;

    sget-object v0, Lio/flutter/plugin/editing/p$c$a;->e:Lio/flutter/plugin/editing/p$c$a;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lio/flutter/plugin/editing/p$c;-><init>(Lio/flutter/plugin/editing/p$c$a;I)V

    iput-object p1, p0, Lio/flutter/plugin/editing/p;->f:Lio/flutter/plugin/editing/p$c;

    invoke-virtual {p0}, Lio/flutter/plugin/editing/p;->x()V

    iget-object p1, p0, Lio/flutter/plugin/editing/p;->b:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object p1, p0, Lio/flutter/plugin/editing/p;->b:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    iput-boolean v1, p0, Lio/flutter/plugin/editing/p;->j:Z

    :cond_1
    return-void
.end method

.method public l()V
    .locals 4

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->f:Lio/flutter/plugin/editing/p$c;

    iget-object v0, v0, Lio/flutter/plugin/editing/p$c;->a:Lio/flutter/plugin/editing/p$c$a;

    sget-object v1, Lio/flutter/plugin/editing/p$c$a;->g:Lio/flutter/plugin/editing/p$c$a;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/p;->i:Lio/flutter/plugin/editing/i;

    invoke-virtual {v0, p0}, Lio/flutter/plugin/editing/i;->l(Lio/flutter/plugin/editing/i$b;)V

    invoke-virtual {p0}, Lio/flutter/plugin/editing/p;->x()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/plugin/editing/p;->g:LX2/x$b;

    invoke-virtual {p0, v0}, Lio/flutter/plugin/editing/p;->G(LX2/x$b;)V

    new-instance v1, Lio/flutter/plugin/editing/p$c;

    sget-object v2, Lio/flutter/plugin/editing/p$c$a;->e:Lio/flutter/plugin/editing/p$c$a;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lio/flutter/plugin/editing/p$c;-><init>(Lio/flutter/plugin/editing/p$c$a;I)V

    iput-object v1, p0, Lio/flutter/plugin/editing/p;->f:Lio/flutter/plugin/editing/p$c;

    invoke-virtual {p0}, Lio/flutter/plugin/editing/p;->F()V

    iput-object v0, p0, Lio/flutter/plugin/editing/p;->m:Landroid/graphics/Rect;

    return-void
.end method

.method public n(Landroid/view/View;LN2/E;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 12

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->f:Lio/flutter/plugin/editing/p$c;

    iget-object v1, v0, Lio/flutter/plugin/editing/p$c;->a:Lio/flutter/plugin/editing/p$c$a;

    sget-object v2, Lio/flutter/plugin/editing/p$c$a;->e:Lio/flutter/plugin/editing/p$c$a;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    iput-object v3, p0, Lio/flutter/plugin/editing/p;->k:Landroid/view/inputmethod/InputConnection;

    return-object v3

    :cond_0
    sget-object v2, Lio/flutter/plugin/editing/p$c$a;->h:Lio/flutter/plugin/editing/p$c$a;

    if-ne v1, v2, :cond_1

    return-object v3

    :cond_1
    sget-object v2, Lio/flutter/plugin/editing/p$c$a;->g:Lio/flutter/plugin/editing/p$c$a;

    if-ne v1, v2, :cond_3

    iget-boolean p1, p0, Lio/flutter/plugin/editing/p;->p:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lio/flutter/plugin/editing/p;->k:Landroid/view/inputmethod/InputConnection;

    return-object p1

    :cond_2
    iget-object p1, p0, Lio/flutter/plugin/editing/p;->l:Lio/flutter/plugin/platform/t;

    iget p2, v0, Lio/flutter/plugin/editing/p$c;->b:I

    invoke-virtual {p1, p2}, Lio/flutter/plugin/platform/t;->c(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugin/editing/p;->k:Landroid/view/inputmethod/InputConnection;

    return-object p1

    :cond_3
    iget-object v0, p0, Lio/flutter/plugin/editing/p;->g:LX2/x$b;

    iget-object v1, v0, LX2/x$b;->g:LX2/x$c;

    iget-boolean v2, v0, LX2/x$b;->a:Z

    iget-boolean v3, v0, LX2/x$b;->b:Z

    iget-boolean v4, v0, LX2/x$b;->c:Z

    iget-boolean v5, v0, LX2/x$b;->d:Z

    iget-object v6, v0, LX2/x$b;->f:LX2/x$d;

    invoke-static/range {v1 .. v6}, Lio/flutter/plugin/editing/p;->s(LX2/x$c;ZZZZLX2/x$d;)I

    move-result v0

    iput v0, p3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v1, 0x2000000

    iput v1, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v3, p0, Lio/flutter/plugin/editing/p;->g:LX2/x$b;

    iget-boolean v4, v3, LX2/x$b;->d:Z

    if-nez v4, :cond_4

    const/high16 v4, 0x1000000

    or-int/2addr v1, v4

    iput v1, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_4
    iget-object v1, v3, LX2/x$b;->h:Ljava/lang/Integer;

    const/4 v3, 0x1

    if-nez v1, :cond_6

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lio/flutter/plugin/editing/p;->g:LX2/x$b;

    iget-object v4, v1, LX2/x$b;->i:Ljava/lang/String;

    if-eqz v4, :cond_7

    iput-object v4, p3, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    iput v0, p3, Landroid/view/inputmethod/EditorInfo;->actionId:I

    :cond_7
    iget v4, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v0, v4

    iput v0, p3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v0, v1, LX2/x$b;->k:[Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-static {p3, v0}, LW/a;->a(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V

    :cond_8
    const/16 v0, 0x22

    if-lt v2, v0, :cond_9

    invoke-static {p3, v3}, LW/a;->b(Landroid/view/inputmethod/EditorInfo;Z)V

    :cond_9
    new-instance v0, Lio/flutter/plugin/editing/h;

    iget-object v1, p0, Lio/flutter/plugin/editing/p;->f:Lio/flutter/plugin/editing/p$c;

    iget v6, v1, Lio/flutter/plugin/editing/p$c;->b:I

    iget-object v7, p0, Lio/flutter/plugin/editing/p;->e:LX2/x;

    iget-object v8, p0, Lio/flutter/plugin/editing/p;->d:LX2/t;

    iget-object v10, p0, Lio/flutter/plugin/editing/p;->i:Lio/flutter/plugin/editing/i;

    move-object v4, v0

    move-object v5, p1

    move-object v9, p2

    move-object v11, p3

    invoke-direct/range {v4 .. v11}, Lio/flutter/plugin/editing/h;-><init>(Landroid/view/View;ILX2/x;LX2/t;Lio/flutter/plugin/editing/h$a;Lio/flutter/plugin/editing/i;Landroid/view/inputmethod/EditorInfo;)V

    iget-object p1, p0, Lio/flutter/plugin/editing/p;->i:Lio/flutter/plugin/editing/i;

    invoke-virtual {p1}, Lio/flutter/plugin/editing/i;->i()I

    move-result p1

    iput p1, p3, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget-object p1, p0, Lio/flutter/plugin/editing/p;->i:Lio/flutter/plugin/editing/i;

    invoke-virtual {p1}, Lio/flutter/plugin/editing/i;->h()I

    move-result p1

    iput p1, p3, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    iput-object v0, p0, Lio/flutter/plugin/editing/p;->k:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->l:Lio/flutter/plugin/platform/t;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/t;->Q()V

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->e:LX2/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LX2/x;->n(LX2/x$f;)V

    invoke-virtual {p0}, Lio/flutter/plugin/editing/p;->x()V

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->i:Lio/flutter/plugin/editing/i;

    invoke-virtual {v0, p0}, Lio/flutter/plugin/editing/i;->l(Lio/flutter/plugin/editing/i$b;)V

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->n:Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback;->remove()V

    :cond_0
    return-void
.end method

.method public p()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->b:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public q(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lio/flutter/plugin/editing/p;->p()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->k:Landroid/view/inputmethod/InputConnection;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v1, v0, Lio/flutter/plugin/editing/h;

    if-eqz v1, :cond_1

    check-cast v0, Lio/flutter/plugin/editing/h;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/editing/h;->f(Landroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    :goto_0
    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final r(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lio/flutter/plugin/editing/p;->x()V

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->b:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public t()V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->f:Lio/flutter/plugin/editing/p$c;

    iget-object v0, v0, Lio/flutter/plugin/editing/p$c;->a:Lio/flutter/plugin/editing/p$c$a;

    sget-object v1, Lio/flutter/plugin/editing/p$c$a;->g:Lio/flutter/plugin/editing/p$c$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/plugin/editing/p;->p:Z

    :cond_0
    return-void
.end method

.method public final u()Z
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->h:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final v(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->c:Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/flutter/plugin/editing/p;->u()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/p;->g:LX2/x$b;

    iget-object v0, v0, LX2/x$b;->j:LX2/x$b$a;

    iget-object v0, v0, LX2/x$b$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lio/flutter/plugin/editing/p;->c:Landroid/view/autofill/AutofillManager;

    iget-object v2, p0, Lio/flutter/plugin/editing/p;->a:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {p1}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object p1

    invoke-virtual {v1, v2, v0, p1}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final w()V
    .locals 5

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->c:Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/flutter/plugin/editing/p;->u()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/p;->g:LX2/x$b;

    iget-object v0, v0, LX2/x$b;->j:LX2/x$b$a;

    iget-object v0, v0, LX2/x$b$a;->a:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lio/flutter/plugin/editing/p;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lio/flutter/plugin/editing/p;->m:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lio/flutter/plugin/editing/p;->c:Landroid/view/autofill/AutofillManager;

    iget-object v3, p0, Lio/flutter/plugin/editing/p;->a:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v3, v0, v2}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final x()V
    .locals 3

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->c:Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/flutter/plugin/editing/p;->g:LX2/x$b;

    if-eqz v0, :cond_1

    iget-object v0, v0, LX2/x$b;->j:LX2/x$b$a;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/flutter/plugin/editing/p;->u()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/p;->g:LX2/x$b;

    iget-object v0, v0, LX2/x$b;->j:LX2/x$b$a;

    iget-object v0, v0, LX2/x$b$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lio/flutter/plugin/editing/p;->c:Landroid/view/autofill/AutofillManager;

    iget-object v2, p0, Lio/flutter/plugin/editing/p;->a:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/autofill/AutofillManager;->notifyViewExited(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public y(Landroid/view/ViewStructure;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lio/flutter/plugin/editing/p;->u()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lio/flutter/plugin/editing/p;->g:LX2/x$b;

    iget-object v2, v2, LX2/x$b;->j:LX2/x$b$a;

    iget-object v2, v2, LX2/x$b$a;->a:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewStructure;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget-object v6, v0, Lio/flutter/plugin/editing/p;->h:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    iget-object v6, v0, Lio/flutter/plugin/editing/p;->h:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    iget-object v7, v0, Lio/flutter/plugin/editing/p;->h:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LX2/x$b;

    iget-object v7, v7, LX2/x$b;->j:LX2/x$b$a;

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/view/ViewStructure;->addChildCount(I)I

    invoke-virtual {v1, v5}, Landroid/view/ViewStructure;->newChild(I)Landroid/view/ViewStructure;

    move-result-object v15

    invoke-virtual {v15, v3, v6}, Landroid/view/ViewStructure;->setAutofillId(Landroid/view/autofill/AutofillId;I)V

    iget-object v9, v7, LX2/x$b$a;->b:[Ljava/lang/String;

    array-length v10, v9

    if-lez v10, :cond_2

    invoke-virtual {v15, v9}, Landroid/view/ViewStructure;->setAutofillHints([Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v15, v8}, Landroid/view/ViewStructure;->setAutofillType(I)V

    invoke-virtual {v15, v4}, Landroid/view/ViewStructure;->setVisibility(I)V

    iget-object v8, v7, LX2/x$b$a;->d:Ljava/lang/String;

    if-eqz v8, :cond_3

    invoke-virtual {v15, v8}, Landroid/view/ViewStructure;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v8

    if-ne v8, v6, :cond_4

    iget-object v6, v0, Lio/flutter/plugin/editing/p;->m:Landroid/graphics/Rect;

    if-eqz v6, :cond_4

    iget v10, v6, Landroid/graphics/Rect;->left:I

    iget v11, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v14

    iget-object v6, v0, Lio/flutter/plugin/editing/p;->m:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v9, v15

    move-object v8, v15

    move v15, v6

    invoke-virtual/range {v9 .. v15}, Landroid/view/ViewStructure;->setDimens(IIIIII)V

    iget-object v6, v0, Lio/flutter/plugin/editing/p;->i:Lio/flutter/plugin/editing/i;

    invoke-static {v6}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/view/ViewStructure;->setAutofillValue(Landroid/view/autofill/AutofillValue;)V

    goto :goto_1

    :cond_4
    move-object v8, v15

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v9, v8

    invoke-virtual/range {v9 .. v15}, Landroid/view/ViewStructure;->setDimens(IIIIII)V

    iget-object v6, v7, LX2/x$b$a;->c:LX2/x$e;

    iget-object v6, v6, LX2/x$e;->a:Ljava/lang/String;

    invoke-static {v6}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/view/ViewStructure;->setAutofillValue(Landroid/view/autofill/AutofillValue;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final z(DD[D)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    const/4 v6, 0x4

    new-array v6, v6, [D

    const/4 v7, 0x3

    aget-wide v8, v5, v7

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    const/16 v9, 0xf

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v8, :cond_0

    const/4 v8, 0x7

    aget-wide v14, v5, v8

    cmpl-double v8, v14, v10

    if-nez v8, :cond_0

    aget-wide v14, v5, v9

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v14, v16

    if-nez v8, :cond_0

    move v8, v13

    goto :goto_0

    :cond_0
    move v8, v12

    :goto_0
    const/16 v14, 0xc

    aget-wide v14, v5, v14

    aget-wide v16, v5, v9

    div-double v14, v14, v16

    aput-wide v14, v6, v13

    aput-wide v14, v6, v12

    const/16 v9, 0xd

    aget-wide v14, v5, v9

    div-double v14, v14, v16

    aput-wide v14, v6, v7

    const/4 v9, 0x2

    aput-wide v14, v6, v9

    new-instance v14, Lio/flutter/plugin/editing/p$b;

    invoke-direct {v14, v0, v8, v5, v6}, Lio/flutter/plugin/editing/p$b;-><init>(Lio/flutter/plugin/editing/p;Z[D[D)V

    invoke-interface {v14, v1, v2, v10, v11}, Lio/flutter/plugin/editing/p$d;->a(DD)V

    invoke-interface {v14, v1, v2, v3, v4}, Lio/flutter/plugin/editing/p$d;->a(DD)V

    invoke-interface {v14, v10, v11, v3, v4}, Lio/flutter/plugin/editing/p$d;->a(DD)V

    iget-object v1, v0, Lio/flutter/plugin/editing/p;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    new-instance v2, Landroid/graphics/Rect;

    aget-wide v3, v6, v12

    float-to-double v10, v1

    mul-double/2addr v3, v10

    double-to-int v1, v3

    aget-wide v3, v6, v9

    mul-double/2addr v3, v10

    double-to-int v3, v3

    aget-wide v4, v6, v13

    mul-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    aget-wide v5, v6, v7

    mul-double/2addr v5, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v0, Lio/flutter/plugin/editing/p;->m:Landroid/graphics/Rect;

    return-void
.end method
