.class public Lio/flutter/view/d$c;
.super Landroid/database/ContentObserver;
.source "SourceFile"


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
.method public constructor <init>(Lio/flutter/view/d;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/view/d$c;->a:Lio/flutter/view/d;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/flutter/view/d$c;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lio/flutter/view/d$c;->a:Lio/flutter/view/d;

    invoke-static {p1}, Lio/flutter/view/d;->i(Lio/flutter/view/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lio/flutter/view/d$c;->a:Lio/flutter/view/d;

    .line 4
    invoke-static {p1}, Lio/flutter/view/d;->d(Lio/flutter/view/d;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "transition_animation_scale"

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lio/flutter/view/d$c;->a:Lio/flutter/view/d;

    sget-object p2, Lio/flutter/view/d$f;->h:Lio/flutter/view/d$f;

    iget p2, p2, Lio/flutter/view/d$f;->e:I

    invoke-static {p1, p2}, Lio/flutter/view/d;->f(Lio/flutter/view/d;I)I

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lio/flutter/view/d$c;->a:Lio/flutter/view/d;

    sget-object p2, Lio/flutter/view/d$f;->h:Lio/flutter/view/d$f;

    iget p2, p2, Lio/flutter/view/d$f;->e:I

    not-int p2, p2

    invoke-static {p1, p2}, Lio/flutter/view/d;->e(Lio/flutter/view/d;I)I

    .line 8
    :goto_0
    iget-object p1, p0, Lio/flutter/view/d$c;->a:Lio/flutter/view/d;

    invoke-static {p1}, Lio/flutter/view/d;->g(Lio/flutter/view/d;)V

    return-void
.end method
