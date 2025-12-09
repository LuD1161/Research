.class public Lio/flutter/plugin/platform/C$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/platform/C$c;->onDraw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lio/flutter/plugin/platform/C$c;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/platform/C$c;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/plugin/platform/C$c$a;->e:Lio/flutter/plugin/platform/C$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/platform/C$c$a;->e:Lio/flutter/plugin/platform/C$c;

    iget-object v0, v0, Lio/flutter/plugin/platform/C$c;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/plugin/platform/C$c$a;->e:Lio/flutter/plugin/platform/C$c;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method
