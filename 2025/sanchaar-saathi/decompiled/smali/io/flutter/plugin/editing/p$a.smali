.class public Lio/flutter/plugin/editing/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX2/x$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/editing/p;-><init>(Landroid/view/View;LX2/x;LX2/t;Lio/flutter/plugin/platform/t;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/flutter/plugin/editing/p;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/editing/p;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/plugin/editing/p$a;->a:Lio/flutter/plugin/editing/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/editing/p$a;->a:Lio/flutter/plugin/editing/p;

    invoke-static {v0}, Lio/flutter/plugin/editing/p;->b(Lio/flutter/plugin/editing/p;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/plugin/editing/p;->E(Landroid/view/View;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/editing/p$a;->a:Lio/flutter/plugin/editing/p;

    invoke-virtual {v0}, Lio/flutter/plugin/editing/p;->l()V

    return-void
.end method

.method public c(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/editing/p$a;->a:Lio/flutter/plugin/editing/p;

    invoke-virtual {v0, p1, p2}, Lio/flutter/plugin/editing/p;->A(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public d(IZ)V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/editing/p$a;->a:Lio/flutter/plugin/editing/p;

    invoke-static {v0, p1, p2}, Lio/flutter/plugin/editing/p;->h(Lio/flutter/plugin/editing/p;IZ)V

    return-void
.end method

.method public e(DD[D)V
    .locals 6

    iget-object v0, p0, Lio/flutter/plugin/editing/p$a;->a:Lio/flutter/plugin/editing/p;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lio/flutter/plugin/editing/p;->i(Lio/flutter/plugin/editing/p;DD[D)V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/editing/p$a;->a:Lio/flutter/plugin/editing/p;

    invoke-static {v0}, Lio/flutter/plugin/editing/p;->f(Lio/flutter/plugin/editing/p;)V

    return-void
.end method

.method public g(LX2/x$e;)V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/editing/p$a;->a:Lio/flutter/plugin/editing/p;

    invoke-static {v0}, Lio/flutter/plugin/editing/p;->b(Lio/flutter/plugin/editing/p;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/flutter/plugin/editing/p;->D(Landroid/view/View;LX2/x$e;)V

    return-void
.end method

.method public h(ILX2/x$b;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/editing/p$a;->a:Lio/flutter/plugin/editing/p;

    invoke-virtual {v0, p1, p2}, Lio/flutter/plugin/editing/p;->C(ILX2/x$b;)V

    return-void
.end method

.method public i(Z)V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/editing/p$a;->a:Lio/flutter/plugin/editing/p;

    invoke-static {v0}, Lio/flutter/plugin/editing/p;->g(Lio/flutter/plugin/editing/p;)Landroid/view/autofill/AutofillManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/flutter/plugin/editing/p$a;->a:Lio/flutter/plugin/editing/p;

    invoke-static {p1}, Lio/flutter/plugin/editing/p;->g(Lio/flutter/plugin/editing/p;)Landroid/view/autofill/AutofillManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/autofill/AutofillManager;->commit()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lio/flutter/plugin/editing/p$a;->a:Lio/flutter/plugin/editing/p;

    invoke-static {p1}, Lio/flutter/plugin/editing/p;->g(Lio/flutter/plugin/editing/p;)Landroid/view/autofill/AutofillManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/autofill/AutofillManager;->cancel()V

    :goto_0
    return-void
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/editing/p$a;->a:Lio/flutter/plugin/editing/p;

    invoke-static {v0}, Lio/flutter/plugin/editing/p;->c(Lio/flutter/plugin/editing/p;)Lio/flutter/plugin/editing/p$c;

    move-result-object v0

    iget-object v0, v0, Lio/flutter/plugin/editing/p$c;->a:Lio/flutter/plugin/editing/p$c$a;

    sget-object v1, Lio/flutter/plugin/editing/p$c$a;->h:Lio/flutter/plugin/editing/p$c$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/flutter/plugin/editing/p$a;->a:Lio/flutter/plugin/editing/p;

    invoke-static {v0}, Lio/flutter/plugin/editing/p;->d(Lio/flutter/plugin/editing/p;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/editing/p$a;->a:Lio/flutter/plugin/editing/p;

    invoke-static {v0}, Lio/flutter/plugin/editing/p;->b(Lio/flutter/plugin/editing/p;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lio/flutter/plugin/editing/p;->e(Lio/flutter/plugin/editing/p;Landroid/view/View;)V

    :goto_0
    return-void
.end method
