.class public Li0/I$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li0/M;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li0/I;->l(Li0/A;Li0/w;Li0/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Li0/p;

.field public final synthetic d:Li0/I;


# direct methods
.method public constructor <init>(Li0/I;Li0/p;)V
    .locals 0

    iput-object p1, p0, Li0/I$g;->d:Li0/I;

    iput-object p2, p0, Li0/I$g;->c:Li0/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li0/I;Li0/p;)V
    .locals 0

    iget-object p1, p0, Li0/I$g;->c:Li0/p;

    invoke-virtual {p1, p2}, Li0/p;->n0(Li0/p;)V

    return-void
.end method
