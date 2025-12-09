.class public final LO3/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LO3/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public e:LO3/b;

.field public f:LO3/u;

.field public g:J

.field public h:[B

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LO3/b$a;->g:J

    const/4 v0, -0x1

    iput v0, p0, LO3/b$a;->i:I

    iput v0, p0, LO3/b$a;->j:I

    return-void
.end method


# virtual methods
.method public final b(LO3/u;)V
    .locals 0

    iput-object p1, p0, LO3/b$a;->f:LO3/u;

    return-void
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, LO3/b$a;->e:LO3/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, LO3/b$a;->e:LO3/b;

    invoke-virtual {p0, v0}, LO3/b$a;->b(LO3/u;)V

    const-wide/16 v1, -0x1

    iput-wide v1, p0, LO3/b$a;->g:J

    iput-object v0, p0, LO3/b$a;->h:[B

    const/4 v0, -0x1

    iput v0, p0, LO3/b$a;->i:I

    iput v0, p0, LO3/b$a;->j:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not attached to a buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
