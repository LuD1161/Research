.class public final Lw1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/d$e;


# instance fields
.field public final synthetic a:Lw1/w;


# direct methods
.method public constructor <init>(Lw1/w;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lw1/v;->a:Lw1/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Lw1/u;

    invoke-direct {v0, p0}, Lw1/u;-><init>(Lw1/v;)V

    iget-object v1, p0, Lw1/v;->a:Lw1/w;

    iget-object v1, v1, Lw1/w;->o:Lw1/e;

    invoke-virtual {v1}, Lw1/e;->f()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
