.class public final Lp2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq2/g;


# instance fields
.field public final a:Lq2/g;


# direct methods
.method public constructor <init>(Lq2/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2/j;->a:Lq2/g;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lp2/j;->a:Lq2/g;

    check-cast v0, Lp2/p;

    invoke-virtual {v0}, Lp2/p;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lp2/i;

    invoke-direct {v1, v0}, Lp2/i;-><init>(Landroid/content/Context;)V

    return-object v1
.end method
