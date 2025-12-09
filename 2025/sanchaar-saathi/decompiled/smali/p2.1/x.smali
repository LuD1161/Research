.class public final Lp2/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq2/g;


# instance fields
.field public final a:Lq2/g;

.field public final b:Lq2/g;


# direct methods
.method public constructor <init>(Lq2/g;Lq2/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2/x;->a:Lq2/g;

    iput-object p2, p0, Lp2/x;->b:Lq2/g;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lp2/x;->a:Lq2/g;

    check-cast v0, Lp2/p;

    invoke-virtual {v0}, Lp2/p;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lp2/x;->b:Lq2/g;

    invoke-interface {v1}, Lq2/g;->a()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lp2/w;

    check-cast v1, Lp2/y;

    invoke-direct {v2, v0, v1}, Lp2/w;-><init>(Landroid/content/Context;Lp2/y;)V

    return-object v2
.end method
