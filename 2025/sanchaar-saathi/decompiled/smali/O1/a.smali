.class public LO1/a;
.super LA1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LO1/a$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "LO1/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:[[B

.field public static final n:LO1/a;

.field public static final o:LO1/a$a;

.field public static final p:LO1/a$a;

.field public static final q:LO1/a$a;

.field public static final r:LO1/a$a;


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:[B

.field public final g:[[B

.field public final h:[[B

.field public final i:[[B

.field public final j:[[B

.field public final k:[I

.field public final l:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, LO1/g;

    invoke-direct {v0}, LO1/g;-><init>()V

    sput-object v0, LO1/a;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    new-array v7, v0, [[B

    sput-object v7, LO1/a;->m:[[B

    new-instance v0, LO1/a;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    move-object v1, v0

    move-object v4, v7

    move-object v5, v7

    move-object v6, v7

    invoke-direct/range {v1 .. v9}, LO1/a;-><init>(Ljava/lang/String;[B[[B[[B[[B[[B[I[[B)V

    sput-object v0, LO1/a;->n:LO1/a;

    new-instance v0, LO1/c;

    invoke-direct {v0}, LO1/c;-><init>()V

    sput-object v0, LO1/a;->o:LO1/a$a;

    new-instance v0, LO1/d;

    invoke-direct {v0}, LO1/d;-><init>()V

    sput-object v0, LO1/a;->p:LO1/a$a;

    new-instance v0, LO1/e;

    invoke-direct {v0}, LO1/e;-><init>()V

    sput-object v0, LO1/a;->q:LO1/a$a;

    new-instance v0, LO1/f;

    invoke-direct {v0}, LO1/f;-><init>()V

    sput-object v0, LO1/a;->r:LO1/a$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[[B[[B[[B[[B[I[[B)V
    .locals 0

    invoke-direct {p0}, LA1/a;-><init>()V

    iput-object p1, p0, LO1/a;->e:Ljava/lang/String;

    iput-object p2, p0, LO1/a;->f:[B

    iput-object p3, p0, LO1/a;->g:[[B

    iput-object p4, p0, LO1/a;->h:[[B

    iput-object p5, p0, LO1/a;->i:[[B

    iput-object p6, p0, LO1/a;->j:[[B

    iput-object p7, p0, LO1/a;->k:[I

    iput-object p8, p0, LO1/a;->l:[[B

    return-void
.end method

.method public static d([I)Ljava/util/List;
    .locals 4

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public static e([[B)Ljava/util/List;
    .locals 5

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method public static g(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V
    .locals 5

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string p1, "null"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :goto_1
    if-ge v2, p1, :cond_2

    aget-object v3, p2, v2

    if-nez v1, :cond_1

    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const-string p1, ")"

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, LO1/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, LO1/a;

    iget-object v0, p0, LO1/a;->e:Ljava/lang/String;

    iget-object v2, p1, LO1/a;->e:Ljava/lang/String;

    invoke-static {v0, v2}, LO1/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LO1/a;->f:[B

    iget-object v2, p1, LO1/a;->f:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LO1/a;->g:[[B

    invoke-static {v0}, LO1/a;->e([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, LO1/a;->g:[[B

    invoke-static {v2}, LO1/a;->e([[B)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, LO1/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LO1/a;->h:[[B

    invoke-static {v0}, LO1/a;->e([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, LO1/a;->h:[[B

    invoke-static {v2}, LO1/a;->e([[B)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, LO1/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LO1/a;->i:[[B

    invoke-static {v0}, LO1/a;->e([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, LO1/a;->i:[[B

    invoke-static {v2}, LO1/a;->e([[B)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, LO1/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LO1/a;->j:[[B

    invoke-static {v0}, LO1/a;->e([[B)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, LO1/a;->j:[[B

    invoke-static {v2}, LO1/a;->e([[B)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, LO1/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LO1/a;->k:[I

    invoke-static {v0}, LO1/a;->d([I)Ljava/util/List;

    move-result-object v0

    iget-object v2, p1, LO1/a;->k:[I

    invoke-static {v2}, LO1/a;->d([I)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, LO1/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LO1/a;->l:[[B

    invoke-static {v0}, LO1/a;->e([[B)Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, LO1/a;->l:[[B

    invoke-static {p1}, LO1/a;->e([[B)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, LO1/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExperimentTokens"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, LO1/a;->e:Ljava/lang/String;

    const-string v3, "null"

    const-string v4, "\'"

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, LO1/a;->f:[B

    const-string v6, "direct"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    invoke-static {v5, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "GAIA"

    iget-object v5, p0, LO1/a;->g:[[B

    invoke-static {v0, v4, v5}, LO1/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "PSEUDO"

    iget-object v5, p0, LO1/a;->h:[[B

    invoke-static {v0, v4, v5}, LO1/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ALWAYS"

    iget-object v5, p0, LO1/a;->i:[[B

    invoke-static {v0, v4, v5}, LO1/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "OTHER"

    iget-object v5, p0, LO1/a;->j:[[B

    invoke-static {v0, v4, v5}, LO1/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, LO1/a;->k:[I

    const-string v5, "weak"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    if-nez v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v4

    const/4 v3, 0x0

    const/4 v6, 0x1

    move v7, v3

    :goto_2
    if-ge v7, v1, :cond_4

    aget v8, v4, v7

    if-nez v6, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    move v6, v3

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "directs"

    iget-object v2, p0, LO1/a;->l:[[B

    invoke-static {v0, v1, v2}, LO1/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;[[B)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, LA1/c;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, LO1/a;->e:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, LA1/c;->m(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    iget-object v1, p0, LO1/a;->f:[B

    invoke-static {p1, v0, v1, v2}, LA1/c;->e(Landroid/os/Parcel;I[BZ)V

    const/4 v0, 0x4

    iget-object v1, p0, LO1/a;->g:[[B

    invoke-static {p1, v0, v1, v2}, LA1/c;->f(Landroid/os/Parcel;I[[BZ)V

    const/4 v0, 0x5

    iget-object v1, p0, LO1/a;->h:[[B

    invoke-static {p1, v0, v1, v2}, LA1/c;->f(Landroid/os/Parcel;I[[BZ)V

    const/4 v0, 0x6

    iget-object v1, p0, LO1/a;->i:[[B

    invoke-static {p1, v0, v1, v2}, LA1/c;->f(Landroid/os/Parcel;I[[BZ)V

    const/4 v0, 0x7

    iget-object v1, p0, LO1/a;->j:[[B

    invoke-static {p1, v0, v1, v2}, LA1/c;->f(Landroid/os/Parcel;I[[BZ)V

    const/16 v0, 0x8

    iget-object v1, p0, LO1/a;->k:[I

    invoke-static {p1, v0, v1, v2}, LA1/c;->j(Landroid/os/Parcel;I[IZ)V

    const/16 v0, 0x9

    iget-object v1, p0, LO1/a;->l:[[B

    invoke-static {p1, v0, v1, v2}, LA1/c;->f(Landroid/os/Parcel;I[[BZ)V

    invoke-static {p1, p2}, LA1/c;->b(Landroid/os/Parcel;I)V

    return-void
.end method
