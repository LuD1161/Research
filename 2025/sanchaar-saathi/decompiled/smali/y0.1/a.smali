.class public final Ly0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly0/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly0/a$a;
    }
.end annotation


# static fields
.field public static final g:Ly0/a$a;


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly0/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly0/a$a;-><init>(Lv3/g;)V

    sput-object v0, Ly0/a;->g:Ly0/a$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Ly0/a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ly0/a;->e:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Ly0/a;->f:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly0/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Ly0/a;->f:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Ly0/i;)V
    .locals 2

    const-string v0, "statement"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly0/a;->g:Ly0/a$a;

    iget-object v1, p0, Ly0/a;->f:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ly0/a$a;->b(Ly0/i;[Ljava/lang/Object;)V

    return-void
.end method
