.class public final LK1/h;
.super LK1/c;
.source "SourceFile"


# instance fields
.field public final g:LK1/k;


# direct methods
.method public constructor <init>(LK1/k;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, LK1/c;-><init>(II)V

    iput-object p1, p0, LK1/h;->g:LK1/k;

    return-void
.end method


# virtual methods
.method public final c(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LK1/h;->g:LK1/k;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
