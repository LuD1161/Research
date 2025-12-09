.class public final Lp2/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq2/g;


# instance fields
.field public final a:Lp2/n;


# direct methods
.method public constructor <init>(Lp2/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2/p;->a:Lp2/n;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lp2/p;->a:Lp2/n;

    invoke-virtual {v0}, Lp2/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lq2/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lp2/p;->a:Lp2/n;

    invoke-virtual {v0}, Lp2/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lq2/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
