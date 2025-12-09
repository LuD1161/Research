.class public LN2/u$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/renderer/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LN2/u;->A(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:LN2/u;


# direct methods
.method public constructor <init>(LN2/u;Lio/flutter/embedding/engine/renderer/FlutterRenderer;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, LN2/u$d;->c:LN2/u;

    iput-object p2, p0, LN2/u$d;->a:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    iput-object p3, p0, LN2/u$d;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, LN2/u$d;->a:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-virtual {v0, p0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->t(Lio/flutter/embedding/engine/renderer/m;)V

    iget-object v0, p0, LN2/u$d;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, LN2/u$d;->c:LN2/u;

    iget-object v1, v0, LN2/u;->f:Lio/flutter/embedding/engine/renderer/n;

    instance-of v1, v1, LN2/l;

    if-nez v1, :cond_0

    invoke-static {v0}, LN2/u;->i(LN2/u;)LN2/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LN2/u$d;->c:LN2/u;

    invoke-static {v0}, LN2/u;->i(LN2/u;)LN2/l;

    move-result-object v0

    invoke-virtual {v0}, LN2/l;->a()V

    iget-object v0, p0, LN2/u$d;->c:LN2/u;

    invoke-static {v0}, LN2/u;->j(LN2/u;)V

    :cond_0
    return-void
.end method
