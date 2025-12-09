.class public LZ0/s$b;
.super Lu0/A;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ0/s;-><init>(Lu0/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:LZ0/s;


# direct methods
.method public constructor <init>(LZ0/s;Lu0/u;)V
    .locals 0

    iput-object p1, p0, LZ0/s$b;->d:LZ0/s;

    invoke-direct {p0, p2}, Lu0/A;-><init>(Lu0/u;)V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE from WorkProgress where work_spec_id=?"

    return-object v0
.end method
