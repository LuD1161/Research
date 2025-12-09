.class public Lio/flutter/view/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/view/d;-><init>(Landroid/view/View;LX2/a;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/view/AccessibilityViewEmbedder;Lio/flutter/plugin/platform/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/accessibility/AccessibilityManager;

.field public final synthetic b:Lio/flutter/view/d;


# direct methods
.method public constructor <init>(Lio/flutter/view/d;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/view/d$d;->b:Lio/flutter/view/d;

    iput-object p2, p0, Lio/flutter/view/d$d;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lio/flutter/view/d$d;->b:Lio/flutter/view/d;

    invoke-static {v0}, Lio/flutter/view/d;->i(Lio/flutter/view/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lio/flutter/view/d$d;->b:Lio/flutter/view/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/flutter/view/d;->l(Lio/flutter/view/d;Z)V

    iget-object v0, p0, Lio/flutter/view/d$d;->b:Lio/flutter/view/d;

    invoke-static {v0}, Lio/flutter/view/d;->h(Lio/flutter/view/d;)V

    :cond_1
    iget-object v0, p0, Lio/flutter/view/d$d;->b:Lio/flutter/view/d;

    invoke-static {v0}, Lio/flutter/view/d;->q(Lio/flutter/view/d;)Lio/flutter/view/d$k;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/flutter/view/d$d;->b:Lio/flutter/view/d;

    invoke-static {v0}, Lio/flutter/view/d;->q(Lio/flutter/view/d;)Lio/flutter/view/d$k;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/d$d;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    invoke-interface {v0, v1, p1}, Lio/flutter/view/d$k;->a(ZZ)V

    :cond_2
    return-void
.end method
