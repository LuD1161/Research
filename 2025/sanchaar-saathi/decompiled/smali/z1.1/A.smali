.class public final Lz1/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/d$a;


# instance fields
.field public final synthetic a:Lw1/d;


# direct methods
.method public constructor <init>(Lw1/d;)V
    .locals 0

    iput-object p1, p0, Lz1/A;->a:Lw1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lz1/A;->a:Lw1/d;

    invoke-interface {v0, p1}, Lw1/d;->onConnected(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    iget-object v0, p0, Lz1/A;->a:Lw1/d;

    invoke-interface {v0, p1}, Lw1/d;->onConnectionSuspended(I)V

    return-void
.end method
