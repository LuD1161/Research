.class public final synthetic Li0/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx0/d$c;


# instance fields
.field public final synthetic a:Li0/I;


# direct methods
.method public synthetic constructor <init>(Li0/I;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li0/H;->a:Li0/I;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Li0/H;->a:Li0/I;

    invoke-static {v0}, Li0/I;->b(Li0/I;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
