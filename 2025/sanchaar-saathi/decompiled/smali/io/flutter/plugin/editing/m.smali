.class public Lio/flutter/plugin/editing/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX2/t$b;


# instance fields
.field public final a:LX2/t;

.field public final b:Landroid/view/inputmethod/InputMethodManager;

.field public c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/inputmethod/InputMethodManager;LX2/t;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/flutter/plugin/editing/j;->a(Landroid/view/View;Z)V

    :cond_0
    iput-object p1, p0, Lio/flutter/plugin/editing/m;->c:Landroid/view/View;

    iput-object p2, p0, Lio/flutter/plugin/editing/m;->b:Landroid/view/inputmethod/InputMethodManager;

    iput-object p3, p0, Lio/flutter/plugin/editing/m;->a:LX2/t;

    invoke-virtual {p3, p0}, LX2/t;->g(LX2/t$b;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lio/flutter/plugin/editing/m;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/editing/m;->b:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lio/flutter/plugin/editing/m;->c:Landroid/view/View;

    invoke-static {v0, v1}, Lio/flutter/plugin/editing/l;->a(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/editing/m;->b:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Lio/flutter/plugin/editing/k;->a(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v0

    return v0
.end method
