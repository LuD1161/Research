.class public final Lp2/o;
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

    iput-object p1, p0, Lp2/o;->a:Lq2/g;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lp2/o;->a:Lq2/g;

    invoke-interface {v0}, Lq2/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp2/l;

    invoke-static {v0}, Lq2/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
