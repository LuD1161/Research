.class public Lz/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lz/f;

.field public b:Lz/f;

.field public c:Lz/f;

.field public d:[Lz/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz/g;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lz/g;-><init>(I)V

    iput-object v0, p0, Lz/c;->a:Lz/f;

    new-instance v0, Lz/g;

    invoke-direct {v0, v1}, Lz/g;-><init>(I)V

    iput-object v0, p0, Lz/c;->b:Lz/f;

    new-instance v0, Lz/g;

    invoke-direct {v0, v1}, Lz/g;-><init>(I)V

    iput-object v0, p0, Lz/c;->c:Lz/f;

    const/16 v0, 0x20

    new-array v0, v0, [Lz/i;

    iput-object v0, p0, Lz/c;->d:[Lz/i;

    return-void
.end method
