.class public final Lz1/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/d$b;


# instance fields
.field public final synthetic a:Lw1/j;


# direct methods
.method public constructor <init>(Lw1/j;)V
    .locals 0

    iput-object p1, p0, Lz1/B;->a:Lw1/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lu1/a;)V
    .locals 1

    iget-object v0, p0, Lz1/B;->a:Lw1/j;

    invoke-interface {v0, p1}, Lw1/j;->onConnectionFailed(Lu1/a;)V

    return-void
.end method
