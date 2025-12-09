.class public final synthetic Lio/flutter/plugin/platform/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lio/flutter/plugin/platform/t;

.field public final synthetic b:LX2/q$d;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/platform/t;LX2/q$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/platform/q;->a:Lio/flutter/plugin/platform/t;

    iput-object p2, p0, Lio/flutter/plugin/platform/q;->b:LX2/q$d;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/platform/q;->a:Lio/flutter/plugin/platform/t;

    iget-object v1, p0, Lio/flutter/plugin/platform/q;->b:LX2/q$d;

    invoke-static {v0, v1, p1, p2}, Lio/flutter/plugin/platform/t;->f(Lio/flutter/plugin/platform/t;LX2/q$d;Landroid/view/View;Z)V

    return-void
.end method
