.class public Lio/flutter/plugin/platform/C$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/platform/C;->k(IILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Ljava/lang/Runnable;

.field public final synthetic e:Lio/flutter/plugin/platform/C;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/platform/C;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/plugin/platform/C$b;->e:Lio/flutter/plugin/platform/C;

    iput-object p2, p0, Lio/flutter/plugin/platform/C$b;->c:Landroid/view/View;

    iput-object p3, p0, Lio/flutter/plugin/platform/C$b;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lio/flutter/plugin/platform/C$b;->c:Landroid/view/View;

    new-instance v0, Lio/flutter/plugin/platform/C$b$a;

    invoke-direct {v0, p0}, Lio/flutter/plugin/platform/C$b$a;-><init>(Lio/flutter/plugin/platform/C$b;)V

    invoke-static {p1, v0}, Lio/flutter/plugin/platform/C$c;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lio/flutter/plugin/platform/C$b;->c:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
