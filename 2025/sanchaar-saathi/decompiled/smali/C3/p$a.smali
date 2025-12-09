.class public final LC3/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB3/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC3/p;->O(Ljava/lang/CharSequence;)LB3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, LC3/p$a;->a:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, LC3/d;

    iget-object v1, p0, LC3/p$a;->a:Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, LC3/d;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method
