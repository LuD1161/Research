.class public LN2/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/engine/renderer/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LN2/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LN2/h;


# direct methods
.method public constructor <init>(LN2/h;)V
    .locals 0

    iput-object p1, p0, LN2/h$a;->a:LN2/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, LN2/h$a;->a:LN2/h;

    invoke-static {v0}, LN2/h;->a(LN2/h;)LN2/h$c;

    move-result-object v0

    invoke-interface {v0}, LN2/h$c;->d()V

    iget-object v0, p0, LN2/h$a;->a:LN2/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LN2/h;->c(LN2/h;Z)Z

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, LN2/h$a;->a:LN2/h;

    invoke-static {v0}, LN2/h;->a(LN2/h;)LN2/h$c;

    move-result-object v0

    invoke-interface {v0}, LN2/h$c;->g()V

    iget-object v0, p0, LN2/h$a;->a:LN2/h;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LN2/h;->c(LN2/h;Z)Z

    iget-object v0, p0, LN2/h$a;->a:LN2/h;

    invoke-static {v0, v1}, LN2/h;->d(LN2/h;Z)Z

    return-void
.end method
