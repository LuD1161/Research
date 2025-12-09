.class public Lio/flutter/view/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/flutter/view/d;


# direct methods
.method public constructor <init>(Lio/flutter/view/d;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/view/d$b;->a:Lio/flutter/view/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lio/flutter/view/d$b;->a:Lio/flutter/view/d;

    invoke-static {v0}, Lio/flutter/view/d;->i(Lio/flutter/view/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lio/flutter/view/d$b;->a:Lio/flutter/view/d;

    invoke-static {v0}, Lio/flutter/view/d;->k(Lio/flutter/view/d;)LX2/a;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/d$b;->a:Lio/flutter/view/d;

    invoke-static {v1}, Lio/flutter/view/d;->j(Lio/flutter/view/d;)LX2/a$b;

    move-result-object v1

    invoke-virtual {v0, v1}, LX2/a;->g(LX2/a$b;)V

    iget-object v0, p0, Lio/flutter/view/d$b;->a:Lio/flutter/view/d;

    invoke-static {v0}, Lio/flutter/view/d;->k(Lio/flutter/view/d;)LX2/a;

    move-result-object v0

    invoke-virtual {v0}, LX2/a;->e()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/flutter/view/d$b;->a:Lio/flutter/view/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/flutter/view/d;->l(Lio/flutter/view/d;Z)V

    iget-object v0, p0, Lio/flutter/view/d$b;->a:Lio/flutter/view/d;

    invoke-static {v0}, Lio/flutter/view/d;->k(Lio/flutter/view/d;)LX2/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LX2/a;->g(LX2/a$b;)V

    iget-object v0, p0, Lio/flutter/view/d$b;->a:Lio/flutter/view/d;

    invoke-static {v0}, Lio/flutter/view/d;->k(Lio/flutter/view/d;)LX2/a;

    move-result-object v0

    invoke-virtual {v0}, LX2/a;->d()V

    :goto_0
    iget-object v0, p0, Lio/flutter/view/d$b;->a:Lio/flutter/view/d;

    invoke-static {v0}, Lio/flutter/view/d;->q(Lio/flutter/view/d;)Lio/flutter/view/d$k;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/flutter/view/d$b;->a:Lio/flutter/view/d;

    invoke-static {v0}, Lio/flutter/view/d;->q(Lio/flutter/view/d;)Lio/flutter/view/d$k;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/d$b;->a:Lio/flutter/view/d;

    invoke-static {v1}, Lio/flutter/view/d;->r(Lio/flutter/view/d;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lio/flutter/view/d$k;->a(ZZ)V

    :cond_2
    return-void
.end method
