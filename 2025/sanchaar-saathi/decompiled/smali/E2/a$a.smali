.class public LE2/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LE2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Landroid/net/Uri;

.field public d:J

.field public e:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LE2/a;
    .locals 8

    new-instance v7, LE2/a;

    iget-object v1, p0, LE2/a$a;->a:Ljava/lang/String;

    iget-object v2, p0, LE2/a$a;->b:Ljava/lang/String;

    iget-object v3, p0, LE2/a$a;->c:Landroid/net/Uri;

    iget-wide v4, p0, LE2/a$a;->d:J

    iget-object v6, p0, LE2/a$a;->e:[B

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, LE2/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;J[B)V

    return-object v7
.end method

.method public b([B)LE2/a$a;
    .locals 0

    iput-object p1, p0, LE2/a$a;->e:[B

    return-object p0
.end method

.method public c(Ljava/lang/String;)LE2/a$a;
    .locals 0

    iput-object p1, p0, LE2/a$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)LE2/a$a;
    .locals 0

    iput-object p1, p0, LE2/a$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public e(J)LE2/a$a;
    .locals 0

    iput-wide p1, p0, LE2/a$a;->d:J

    return-object p0
.end method

.method public f(Landroid/net/Uri;)LE2/a$a;
    .locals 0

    iput-object p1, p0, LE2/a$a;->c:Landroid/net/Uri;

    return-object p0
.end method
