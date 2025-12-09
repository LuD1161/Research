.class public LZ0/w$a;
.super Lu0/A;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ0/w;-><init>(Lu0/u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:LZ0/w;


# direct methods
.method public constructor <init>(LZ0/w;Lu0/u;)V
    .locals 0

    iput-object p1, p0, LZ0/w$a;->d:LZ0/w;

    invoke-direct {p0, p2}, Lu0/A;-><init>(Lu0/u;)V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE workspec SET schedule_requested_at=? WHERE id=?"

    return-object v0
.end method
