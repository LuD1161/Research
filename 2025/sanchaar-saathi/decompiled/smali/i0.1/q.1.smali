.class public final synthetic Li0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx0/d$c;


# instance fields
.field public final synthetic a:Li0/u;


# direct methods
.method public synthetic constructor <init>(Li0/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li0/q;->a:Li0/u;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Li0/q;->a:Li0/u;

    invoke-static {v0}, Li0/u;->Q(Li0/u;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
